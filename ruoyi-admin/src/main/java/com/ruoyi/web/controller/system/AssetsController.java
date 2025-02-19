package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.Assets;
import com.ruoyi.common.core.domain.entity.RepairOrder;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.enums.EquipmentStatusEnum;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.service.IAssetsService;
import com.ruoyi.system.service.IRepairOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 资产管理 （电脑桌椅等）
 *
 * @author xxx
 */

//@RestController这是 Spring MVC 中的一个注解，
// 表示该类的所有方法返回的对象会自动被转换成 JSON 格式并发送给客户端。
// 它相当于 @Controller 和 @ResponseBody 的组合。
@RestController
@RequestMapping("/system/assets")
public class AssetsController extends BaseController {

    /**
     * 上传文件接口
     *
     * @Value Spring 的注解，用于注入配置文件中的值 application.properties/yml（在main（项目启动：RuoYiApplication）方法对应的那层级）
     * 这个值会被注入到 uploadDir 变量中，在后续文件保存时使用。
     */
    @Value("${file.upload-dir}") //uploads
    private String uploadDir;

    @Autowired
    private IAssetsService assetsService;
    @Autowired
    private IRepairOrderService repairOrderService;

    /**
     * 全ての資産管理リストを取得
     */
    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo getAssetsList(Assets assets) {
        startPage();
        assets.setStatus(EquipmentStatusEnum.NORMAL.getCode());
        List<Assets> assetsList = assetsService.getAssetsList(assets);
        return getDataTable(assetsList);
    }


    /**
     * 资产详细信息
     *
     * @param assetId
     * @return
     */
    @GetMapping("/list/{assetId}")
    public AjaxResult getInfo(@PathVariable("assetId") Long assetId) {
        return success(assetsService.getAssetByAssetId(assetId));
    }


    /**
     * 用户资产详细信息
     *
     * @param assets
     * @return
     */
    @GetMapping("/listByUser")
    public AjaxResult getUserAsset(Assets assets) {
        //获取当前登录用户id
        Long userId = getUserId();
        List<Map<String, Object>> result = new ArrayList<>(); //新建空数组
        List<Assets> assetsList = assetsService.getAssetByUserId(userId);
        for (Assets assetInfo : assetsList) { //遍历查询到的用户信息
            Map<String, Object> map = new HashMap<>(); //新建一个空对象
            map.put("value", assetInfo.getAssetName());
            map.put("assetId", assetInfo.getAssetId());
            result.add(map);

        }
        return success(result);
    }


    /**
     * 新增资产信息
     */
    @PreAuthorize("@ss.hasPermi('system:asset:add')")
    @PostMapping("/add")
    @Log(title = "资产管理", businessType = BusinessType.INSERT)
    public AjaxResult add(@RequestBody Assets assets) {
        // 根据资产类型生成 SN 号
        String sn = assetsService.generateSN(assets.getAssetType());
        assets.setSnNumber(sn);
        //  资产状态默认设置"正常"
        assets.setStatus(EquipmentStatusEnum.NORMAL.getCode());
        // 添加资产到数据库
        return toAjax(assetsService.insertAssets(assets));
    }

    /**
     * 修改资产信息
     */
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody Assets assets) {
        //校验SN码是否唯一 & SN码是修改不了的
        return toAjax(assetsService.updateAsset(assets));
    }

    /**
     * 根据维修单修改资产库存
     * 如果有并发需求，建议使用 乐观锁（version 字段） 或 数据库锁（for update） 来防止
     */
    @PutMapping("/reduceQuantity")
//    这里 this.form.assetId 是 一个单独的值（Long 类型），而不是 JSON 对象
//    @RequestBody 需要的是一个 JSON，所以 Spring Boot 无法正确解析 Long assetId
//    如果你只想传递一个 Long，改成 @RequestParam：
    public AjaxResult reduceQuantity(@RequestBody Map<String, Long> request) {
        Long assetId = request.get("assetId");
        return toAjax(assetsService.reduceQuantity(assetId));
    }

    /**
     * 维修申请单上传图片
     *
     * @param file
     * @return
     * @RequestParam 注解表示接收一个名为 image 的参数（即文件上传表单中的文件字段）formData.append('image', this.file);
     * MultipartFile 是 Spring 提供的一个类，用来处理文件上传
     */
    @PostMapping("/upload")
    public AjaxResult uploadImage(@RequestParam("image") MultipartFile file) {
        if (file.isEmpty()) {
            return error("No file uploaded");
        }
        //一定要先 生成一个流 不然到时候关闭流inputStream.close() 不知道是哪个
        InputStream inputStream = null;
        try { // 生成一个唯一的文件名
            //UUID 是一种广泛使用的唯一标识符生成方式，可以保证文件名的唯一性，防止文件重名。
            String filename = UUID.randomUUID().toString() + "." + getFileExtension(file.getOriginalFilename());
            Path path = Paths.get(uploadDir + "/" + filename);
            // 保存文件到服务器
            // 流从这里获取里
            inputStream = file.getInputStream();
            // 用来将文件从上传的输入流复制到目标路径。如果目标路径已经存在相同的文件，StandardCopyOption.REPLACE_EXISTING 会覆盖它。
            Files.copy(inputStream, path, StandardCopyOption.REPLACE_EXISTING);
            // 返回图片的 URL

            return success("http://localhost:8080/uploads/" + filename);
        } catch (IOException e) {
            //catch try里如有异常有问题 在catch里抓取，如果不写try catch 直接在类里添加throw抛上一层
            e.printStackTrace();//控制台输出
            return error("No file uploaded");
        } finally {

            try {
                if (inputStream != null) {

                    //关闭 流 运行时未关闭输入流，JVM还在等待用户关闭，存在引用无法回收
                    inputStream.close(); //bug解决 MultipartFile Cannot delete tomcat.
                    //由于使用了file.getInputStream()这个方法且未关闭流，导致出现了异常
                }

            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

    }

    // 获取文件扩展名
    private String getFileExtension(String filename) {
        return filename.substring(filename.lastIndexOf('.') + 1);
    }

    // 图片上传成功后的响应体
    public static class FileUploadResponse {
        private String imageUrl;

        public FileUploadResponse(String imageUrl) {
            this.imageUrl = imageUrl;
        }

        public String getImageUrl() {
            return imageUrl;
        }
    }

    /**
     * 提交维修单申请
     *
     * @param repairOrder 前端提交的表单数据
     * @return
     */
    @PostMapping("/addReapair")
    public AjaxResult addReapair(@RequestBody RepairOrder repairOrder) {
        // 检查传递的 order 对象
        System.out.println(repairOrder);
        try {
            return toAjax(repairOrderService.saveRepairOrder(repairOrder));
        } catch (Exception e) {
            e.printStackTrace();
            return error("提交失败");
        }

    }


    /**
     * 删除资产信息
     */
    @DeleteMapping("/{assetIds}")
    public AjaxResult removeAssets(@PathVariable Long[] assetIds) {
        return toAjax(assetsService.delAssetsByIds(assetIds));
    }


}
