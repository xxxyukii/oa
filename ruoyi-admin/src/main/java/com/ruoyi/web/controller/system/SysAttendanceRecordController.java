package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.*;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.service.ISysAttendanceRecordService;
import com.ruoyi.system.service.ISysRoleService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * 考勤记录
 * 上下班打卡 打卡统计 考勤报表
 * 考勤流水表 考勤统计表
 * 上下班打卡记录到流水表中
 * 每天凌晨统计昨天考勤情况 记录缺勤，加班统计等情况，提供接口给请假补卡审批，提供页面供员工查看自己考勤情况，对于异常情况发送邮件通知
 * 提供一些打卡sql报表给管理人员，比如上月本月考勤异常人员
 * 三个考勤表 《考勤流水表 打刻りれきひょう 》 《考勤统计表 每日流水表→考勤统计表》 《考勤报表 考勤异常人员 提供人事 财务》
 * このシステムの特徴：
 * 打刻記録: 社員の出勤・退勤時刻を日々記録し、データベースに保存。
 * 勤怠統計: 毎日の勤怠情報を集計し、欠勤や残業などを自動的に計算。
 * 異常通知: 打刻漏れや遅刻、早退など、異常が発生した場合にメールで通知。
 * 自助機能: 社員が自分の勤怠情報を確認し、遅刻補正や休暇申請を行える。
 * 管理者用レポート: 管理者向けに、勤怠異常をまとめたレポートや統計を生成。
 * 集計・報告書: 月次・日次の勤怠報告書を生成し、勤怠管理を効率化。
 *
 * @author xxx
 */

@RestController
@RequestMapping("/system/attendance")
public class SysAttendanceRecordController extends BaseController {


    @Autowired
    private ISysAttendanceRecordService attendanceRecordService;

    @Autowired
    private ISysRoleService roleService;

    /**
     * 打卡实时考勤记录
     *
     * @author xxx
     */
    @PostMapping
    public AjaxResult addAttendanceRecord() {
        SysAttendanceRecord record = new SysAttendanceRecord();
        //現在ログインしているユーザーのIDを取得する
        record.setUserId(getUserId());
        //ユーザーのクリックした時刻を取得する
        //System.currentTimeMillis()是时间戳 1970.1.1→毫秒数  我设置的是date类型所以要转换一下
        //Java の System クラスに属するメソッドで、
        // 現在の時刻を 1970年1月1日午前0時（UTC）からのミリ秒単位で返すものです。
        //より精度の高い計測には System.nanoTime()
        record.setCheckTime(new Date(System.currentTimeMillis()));

        return toAjax(attendanceRecordService.insertRecord(record));
    }



    @Scheduled(cron = "0 0 4 * * ?") //每天4：00自动运行   spring scheduled 表达式生成   ex每天1点10分30秒触发任务
    public void afterPropertiesSet() throws Exception {


        LocalDate today = LocalDate.of(2024, 11, 20);
        LocalDate yesterday = today.minusDays(1);

        LocalDateTime startDateTime = yesterday.atStartOfDay().plusHours(5);
        LocalDateTime endDateTime = today.atStartOfDay().plusHours(4);

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String dateStart = dateTimeFormatter.format(startDateTime);
        String dateEnd = dateTimeFormatter.format(endDateTime);
        logger.debug("统计考勤开始结束时间[{} - {}]", dateStart, dateEnd);

        //todo 获取每个用户前一天5：00-隔天4：00的打卡记录
        List<Map<String, Object>> attendanceList = getAttendanceList(dateStart, dateEnd);
        System.out.println(attendanceList);
        //todo 查询出来的每一个用户的记录 存到 表二 《attendance》里
        for (Map<String, Object> map : attendanceList) {
            Long userId = (Long) map.get("user_id");
            Long count = (Long) map.get("count");
            LocalDateTime amTime = (LocalDateTime) map.get("am_time");
            LocalDateTime pmTime = (LocalDateTime) map.get("pm_time");
            Long deptId = (Long) map.get("dept_id");//不能用int 如果是空的就会报错 integer可以为null 包装类
            String userName = (String) map.get("user_name");

            SysAttendance attendance = new SysAttendance();
            attendance.setUserId(userId);
            attendance.setUserName(userName);
            attendance.setDeptId(deptId);
            attendance.setAttendanceDate(yesterday);

            //如果未打卡 直接将无数据的存到 表二记录表里
            if (count == null) {
                //打卡记录表实例
                attendance.setAmTime(amTime);
                attendance.setPmTime(pmTime);
            } else if (count == 1) {
                //如果打卡次数为1 则查询出只有一次的打卡记录 根据时间规则做出判断
                if (amTime == null || pmTime == null) {
                    continue;
                }
                if (amTime.equals(pmTime)) {
                    //todo 规定时间  用的LocalTime

                    LocalTime startTime = LocalTime.of(5, 0, 0); // 08:00 上班打卡
                    LocalTime lateTime = LocalTime.of(13, 0, 0); // 09:30 迟到结束

                    LocalTime localTime = amTime.toLocalTime();
                    // 根据不同的时间段进行判断
                    if (localTime.isAfter(startTime) && localTime.isBefore(lateTime)) {
                        // 上班打卡时间 >05:00<13:00
                        attendance.setAmTime(amTime);
                        attendance.setRemark("上班");
                    } else {
                        // 下班打卡时间 13:00

                        attendance.setPmTime(pmTime); //
                        attendance.setRemark("下班"); //
                    }

                }
            } else {
                //当天打卡次数大于1
                attendance.setAmTime(amTime);
                attendance.setPmTime(pmTime);
            }

            //todo 获取到的打卡记录 插入到‘员工考勤当日记录表里 ’sys_attendance
            attendanceRecordService.insertAttendance(attendance);


        }


    }


    //todo 员工表和record查询查询出来的 包括 未打卡 打卡 最早最晚打卡 count
    public List<Map<String, Object>> getAttendanceList(String dateStart, String dateEnd) {
        return attendanceRecordService.getAttendanceList(dateStart, dateEnd);
    }

    /**
     * 考勤记录表 （全）
     *
     * @author xxx
     */
    @GetMapping("/list")
    @ResponseBody
    @PreAuthorize("@ss.hasPermi('system:attendance:list')")
    public TableDataInfo getAllAttendance(SysAttendance attendance) {
        //获取当前登录用户id
        Long currentUserId = getUserId();
        //根据用户ID查询角色
        List<Long> role = roleService.selectRoleByUserId(currentUserId);
        //todo 函数式接口 @FunctionalInterface 4个基础接口
        // Predicate(一个入参，bool类型返回值)、
        // Supplier(没有入参、一个返回值)、
        // Consumer(一个入参、没有返回值)、
        // Function(一个入参、一个返回值)
//        Predicate<SysRole> predicate = new Predicate<SysRole>() {
//            @Override
//            public boolean test(SysRole sysRole) {
//                return false;
//            }
//        };
//        for (SysRole role : roles) {
//            boolean test = predicate.test(role);
//            if (test) {
//                //保留
//            }
//        }
//        Long l = roles.stream()
//                .filter(e -> false)
//                .peek(e -> e.setDataScope(null))
//                .map(e -> e.getRoleId())
//                .findAny()
//                .orElseGet(() -> 1);

        //判断登录的用户id对应的角色id 展示 不同页 返回不同数据
        //↓只想要收集每行的 roleId 作为一个列表 收集到List<Long> role
//        List<Long> role = roles.stream().map(SysRole::getRoleId).collect(Collectors.toList());
        startPage();
        if (!role.isEmpty()) {

            if (role.contains(1L)) {
                List<SysAttendance> allAttendance = attendanceRecordService.getAllAttendance(attendance);
                return getDataTable(allAttendance);
            } else {

                List<SysAttendance> attendanceByUserId = attendanceRecordService.getAttendanceByUserId(currentUserId);
                return getDataTable(attendanceByUserId);

            }
        }

        return getDataTable(new ArrayList<>());

    }

    /**
     * 根据考勤attId获取详细信息
     */
    @GetMapping("/list/{attId}")
//@PathVariable 注解用于从 URL 路径中提取参数，通常用于 RESTful
// 风格的 URL 设计。它将 URL 中的某一部分作为方法参数传递给控制器方法。
    public AjaxResult getInfo(@PathVariable("attId") Long attId) {

        return success(attendanceRecordService.selectAttendanceById(attId));
    }


    /**
     * 修改考勤表
     *
     * @author xxx
     */
    @PutMapping
    public AjaxResult edit(@RequestBody SysAttendance attendance) { //@RequestBody请求体里

        System.out.println(attendance);
        //校验用户是否允许操作
//        userService.checkUserAllowed(user);
        //校验用户是否有数据权限
//        userService.checkUserDataScope(user.getUserId());
        //获取登录用户名
//        user.setUpdateBy(getUsername());

        return toAjax(attendanceRecordService.updateAttendance(attendance));
    }

    /**
     * 导出考勤数据
     */

    //HttpServletResponse response 因为不能直接返回一个数据对象 所以通过这个类 返回
//    这个方法是导出文件（例如 Excel 表格）到客户端，而不是直接返回一个数据对象。HttpServletResponse
//    是 Java Servlet 提供的一个类，用于直接处理 HTTP 响应，可以让开发者控制返回给客户端的内容和格式。
//    控制 HTTP 响应头和流。
//    直接将生成的文件数据发送给客户端。
//    避免临时保存文件，提高效率和安全性。
    @PostMapping("/export")
    @PreAuthorize("@ss.hasPermi('system:attendance:export')")
    //是 Servlet API 提供的一个对象，用于控制响应数据（在这里是一个 Excel 文件）。
    //HttpServletResponse response: 用于将导出的 Excel 文件返回给客户端。
    public void export(HttpServletResponse response, SysAttendance attendance) {
        List<SysAttendance> list = attendanceRecordService.getAllAttendance(attendance);
        //是一个泛型工具类，用来导出 Excel 文件，
        ExcelUtil<SysAttendance> util = new ExcelUtil<>(SysAttendance.class);//SysAttendance.class 表明我们要导出的数据是 SysAttendance 类型。
        util.exportExcel(response, list, "考勤数据");//用于设置响应的 HTTP 头信息，将导出的 Excel 文件传送给客户端。
    }

    /**
     * 导入考勤数据
     */

    @PostMapping("/importData")
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception {
        ExcelUtil<SysAttendance> util = new ExcelUtil<SysAttendance>(SysAttendance.class);
        List<SysAttendance> attendanceList = util.importExcel(file.getInputStream());
        String operName = getUsername();
        String message = attendanceRecordService.importAttendance(attendanceList, updateSupport, operName);
        return success(message);
    }

    /**
     * 导入考勤数据模板
     */

    @PostMapping("/importTemplate")
    public void importTemplate(HttpServletResponse response) {
        ExcelUtil<SysAttendance> util = new ExcelUtil<SysAttendance>(SysAttendance.class);
        util.importTemplateExcel(response, "考勤数据");
    }




    //    main方法
    public static void main(String[] args) {
        System.out.println(new Date(System.currentTimeMillis()));
        Calendar calendar = Calendar.getInstance(); // 获取当前日期和时间的Calendar实例
        calendar.add(Calendar.DAY_OF_MONTH, -1); // 将日期回退到前一天

        long timestamp = calendar.getTimeInMillis(); // 获取前一天的时间戳（毫秒）
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println("前一天的时间戳（毫秒）: " + new Date(timestamp));

        String formattedDate = sdf.format(new Date(timestamp));
        System.out.println(formattedDate);//前一天的时间
        String formattedDateCur = sdf.format(new Date(System.currentTimeMillis()));


    }

}
