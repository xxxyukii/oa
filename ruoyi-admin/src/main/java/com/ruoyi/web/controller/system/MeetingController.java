package com.ruoyi.web.controller.system;


import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.TypeReference;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.MeetingBooking;
import com.ruoyi.common.core.domain.entity.MeetingRoom;
import com.ruoyi.common.core.domain.entity.SysAttendance;
import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.SysPost;
import com.ruoyi.system.service.IMeetingService;
import com.ruoyi.system.service.ISysRoleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 会议室
 *
 * @author xxx
 */

//主要用于控制任务在某个指定时间执行或每隔一段时间执行。使用@Scheduled注解时，需要配合@EnableScheduling注解一起使用。
//@EnableScheduling注解需要放在项目的主启动类上，而@Scheduled注解则放在需要定时执行的方法上‌
@EnableScheduling
@RestController
@RequestMapping("/system/meeting")

public class MeetingController extends BaseController {
    @Autowired
    private IMeetingService meetingService;

    @Autowired
    private ISysRoleService roleService;

    /**
     * 获取会议室list
     *
     * @param meetingRoom
     * @return list信息
     */
    //todo 全ての会議室リストを取得
    @GetMapping("/room/list")
    @ResponseBody
    public TableDataInfo getAllMeetingRoom(MeetingRoom meetingRoom) {
        //获取当前登录用户id
        Long currentUserId = getUserId();
        //根据用户ID查询角色
        List<SysRole> roles = roleService.selectRolesByUserId(currentUserId);
        List<Long> role = roles.stream().map(SysRole::getRoleId).collect(Collectors.toList());
        startPage();
        List<MeetingRoom> allMeetingRoom = meetingService.getAllMeetingRoom(meetingRoom);
        return getDataTable(allMeetingRoom);
    }

    /**
     * 根据roomId获取会议室信息
     *
     * @param roomId 会议室id
     * @return
     */
    @GetMapping(value = "/{roomId}")
//@PathVariable 注解用于从 URL 路径中提取参数，通常用于 RESTful 风格的 URL 设计。
// 它将 URL 中的某一部分作为方法参数传递给控制器方法。
    public AjaxResult getInfo(@PathVariable("roomId") Long roomId) {

        return success(meetingService.getMeetingRoomByRoomId(roomId));
    }

    /**
     * 获取roomName列表信息
     */
    @GetMapping(value = "/roomnamelist")
    public AjaxResult getRoomNamelist() {

        return success(meetingService.getRoomNamelist());
    }


    /**
     * 新增会议室
     */

    @PostMapping("/add")
    //@RequestBody 注解用于从 HTTP 请求的请求体中提取数据，
    // 通常用于 POST 或 PUT 请求。它可以将请求体中的 JSON 数据（或其他格式的数据）自动转化为 Java 对象。
    public AjaxResult add(@RequestBody MeetingRoom meetingRoom) {
//        if (!meetingService.checkRoomNameUnique(meetingRoom)) {
//            return error("新增会议室'" + meetingRoom.getRoomName()+ "'失败，会议室名称已存在");
//        }
        //有一样的会议室名称就添加不了
        String roomName = meetingRoom.getRoomName();
        if (meetingService.checkRoomNameUnique(roomName)) {
            return error("新增会议室'" + roomName + "'失败，会议室已存在");
        }
        //新增会议室
        return toAjax(meetingService.insertMeetingRoom(meetingRoom));

    }

    /**
     * 会议室状态修改 是否停用
     * @param meetingRoom
     * @return
     */
    @PutMapping("/changeInUse")
    public AjaxResult changeInUse(@RequestBody MeetingRoom meetingRoom){
        return toAjax(meetingService.updateMeetingInUse(meetingRoom));
    }

    /**
     * 修改会议室
     */

    @PutMapping
    public AjaxResult edit(@Validated @RequestBody MeetingRoom meetingRoom) {
        String equipment = meetingRoom.getEquipment();
        return toAjax(meetingService.updatemeetingRoom(meetingRoom));
    }

    /**
     * 删除会议室
     *
     * @param roomIds
     * @return
     */
    @DeleteMapping("/{roomIds}")
    public AjaxResult removeRoom(@PathVariable Long[] roomIds) {
        return toAjax(meetingService.deleteMeetingRoomByIds(roomIds));
    }

    /**
     * 会议室图片上传
     */
    @PostMapping("/upload/image")
    public AjaxResult uploadImage(@RequestParam("file") MultipartFile file) {
        if (!file.isEmpty()) {

        }
        return null;
    }

    /**
     * 导出会议室列表数据
     */
    //实体类 还没写@Excel注解
    @PostMapping("/export")
    public void export(HttpServletResponse response, MeetingRoom meetingRoom) {
        List<MeetingRoom> list = meetingService.getAllMeetingRoom(meetingRoom);
        ExcelUtil<MeetingRoom> util = new ExcelUtil<>(MeetingRoom.class);
        util.exportExcel(response, list, "会议室数据");
    }

    /**
     * 查询所有预约记录
     */

    @GetMapping("/booking/list")
    @ResponseBody
    public TableDataInfo getAllMeetingBooking(MeetingBooking meetingBooking) {
        //获取当前登录用户id
        Long currentUserId = getUserId();
        //根据用户ID查询角色
        List<SysRole> roles = roleService.selectRolesByUserId(currentUserId);
        List<Long> role = roles.stream().map(SysRole::getRoleId).collect(Collectors.toList());
        startPage();

        List<MeetingBooking> allMeetingBooking = meetingService.getAllMeetingBooking(meetingBooking);
        return getDataTable(allMeetingBooking);

    }


    /**
     * 获取指定时间段可用的会议室
     */
    @GetMapping(value = "/room/available")
    public AjaxResult getAvailableRooms(@RequestParam("startTime") @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime startTime,
                                        @RequestParam("endTime") @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime endTime

    ) {

        return success(meetingService.getAvailableRooms(startTime, endTime));
    }


    /**
     * 新增会议记录
     */

    @PostMapping("/booking/add")
    //@RequestBody 注解用于从 HTTP 请求的《请求体》中提取数据，
    // 通常用于 POST 或 PUT 请求。它可以将请求体中的 JSON 数据（或其他格式的数据）自动转化为 Java 对象。
    public AjaxResult addMeetingBooking(@RequestBody MeetingBooking meetingBooking) {
//        List<Long> participantList = Arrays.stream(meetingBooking.getParticipants().split(","))
//                .map(Long::parseLong)
//                .collect(Collectors.toList());
//        String[] participants = meetingBooking.getParticipants().split(",");//
//        for (String participant : participants) {
//            System.out.println("参会人 ID: " + participant);
//            meetingBooking.setParticipants(participant);
//        }

        //判断同个时间，同一个会议室是否有被占用 检查会议室时间冲突
        List<MeetingBooking> conflictingBookings = meetingService.getConflictingBookings(
                meetingBooking.getRoomId(),
                meetingBooking.getStartTime(),
                meetingBooking.getEndTime()
        );
        if (!conflictingBookings.isEmpty()) {
            return AjaxResult.error("会议室在该时间段已被占用", conflictingBookings);
        }

        // xx ？？  checkedAttendees传过来的时候是JSON字符串数组
        String checkedAttendees = meetingBooking.getCheckedAttendees();
        //将 JSON 字符串解析成 JSONArray
        // Fastjson 库的 JSONArray.parse() 方法将 checkedAttendees 字符串解析成一个 JSONArray 对象。JSONArray 是一个用于表示 JSON 数组的类。
        // 通过这行代码，checkedAttendees 字符串被转换为一个 Java 中的数组对象，它包含了多个 JSON 对象。
        JSONArray jsonArray = JSONArray.parse(checkedAttendees);
        for (int i = 0; i < jsonArray.size(); i++) {
            //通过 getJSONObject(i) 方法获取到数组中的第 i 个 JSON 对象。这个对象代表一个参会者。
            JSONObject jsonObject = jsonArray.getJSONObject(i);
            // 从每个参会者的 JSON 对象中获取 "label" 字段的值，通常是用户名或部门名称。
            String label = jsonObject.getString("label");
        }
        //将 JSON 字符串解析为 List<Map>   xx Map.class？？
        //parseArray 方法将 JSON 字符串转换为一个列表，每个列表项是一个 Map 对象，
        // Map 中存储了每个参会者的键值对（例如 "id": 149, "label": "user007"）。
        List<Map> maps = JSONArray.parseArray(checkedAttendees, Map.class);
        //for ： List for循环
        for (Map map : maps) {
            Object o = map.get("label");

            //xx
            Object ob = map.get("type");   //Integer ob:1
            Object obj = map.get("id");
            //DeptId不是List 只会覆盖值 存储最后一个
            if (ob != null && Integer.valueOf(1).equals(ob)) {
                if (obj != null && obj instanceof Integer) {
                    meetingBooking.setDeptId(((Integer) obj).longValue());
                } else {
                    // 根据需求处理其他类型或 null 值
                    meetingBooking.setDeptId(null); // 或者设为默认值
                }
            }

        }
        List<Map<String, Object>> maps1 = JSON.parseObject(checkedAttendees, new TypeReference<List<Map<String, Object>>>() {
        });


        // xx 遍历 获取 type类型 做判断 如果1 获取id 存到meetingBooking.setDeptId 2....
        meetingBooking.setBookingId(meetingBooking.getBookingId());

        //获取当前登录用户id
        meetingBooking.setUserId(getUserId());


        return toAjax(meetingService.addMeetingBooking(meetingBooking));

    }

//    @Scheduled(cron = "0 */1 * * * ?") // 每分钟执行一次
//    public void updateInUseStatus() {
//        List<MeetingBooking> bookings = meetingService.selectAll();
//        LocalDateTime now = LocalDateTime.now();
//        bookings.forEach(booking -> {
//            if (now.isAfter(booking.getStartTime()) && now.isBefore(booking.getEndTime())) {
//                booking.setInUse(1);
//            } else {
//                booking.setInUse(0);
//            }
//            meetingBookingMapper.updateInUseStatus(booking);
//        });
//    }

    /**
     * 删除会议记录
     */
    //1.删除权限 -1 先判断是不是创建者，删除自己申请创建的会议 -2管理员可删除
    //2.删除时间范围 -1会议如果开始了不能删除 -2已经结束的除管理员不能删除
    //3.删除参会人员数据
    //4.gpt建议
//    权限检查：确保只有授权用户才能执行删除操作。
//    会议是否存在：确保要删除的会议记录确实存在。
//    会议状态检查：防止删除进行中的或已结束的会议，除非业务需求允许。
//    关联数据清理：删除会议时，清理相关的资源、参会人员记录等。
//    日志记录：记录删除操作的相关信息。
//    异常处理：确保删除操作中的任何错误都能被捕获并处理。
//    软删除 vs 硬删除：根据需求选择是否真的删除数据，或者使用软删除标记。
    @DeleteMapping("/booking/{bookingId}")
    public AjaxResult removeBooking(@PathVariable Long[] bookingId) {
        //获取当前登录用户id
        Long currentUserId = getUserId();
        return toAjax(meetingService.deleteMeetingBookingByIds(bookingId, currentUserId));
    }


    //会议审核
    @PostMapping("/booking/status")
    public AjaxResult statusExamine(@RequestBody MeetingBooking meetingBooking) {
        //通过前端输入的审核状态码更改status状态码

        //根据bookingId查询 再update修改
        Long bookingId = meetingBooking.getBookingId();


        return toAjax(meetingService.updateMeetingBooking(meetingBooking));
    }


}