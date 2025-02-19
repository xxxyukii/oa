package com.ruoyi.common.core.domain.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.ruoyi.common.config.serializer.ListDeserialize;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class MeetingBooking {
    @Id
//  @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long bookingId;

    @JsonDeserialize(using = ListDeserialize.class)
    private String checkedAttendees;//参会人或部门

//@ManyToOne
//@JoinColumn(name = "room_id", nullable = false)
    private MeetingRoom meetingRoom; //会议室

    private Long roomId;
    private String roomName;
    //    如果你使用了 Lombok 的 @Data 或 @Getter/@Setter 注解，它只会自动生成当前类字段的
//    getter 和 setter 方法，而不会生成嵌套对象字段的转发方法。所以需要手动添加上述转发方法。
//    public String getRoomName() {
//        return meetingRoom != null ? meetingRoom.getRoomName() : null;
//    }
    private SysUser sysUser;//用户
    private Long userId; //预约会议时userId
    private String phonenumber; //预约会议的时候的手机号
    private String examineReason; //拒绝理由
    private SysDept dept; //部门
    private Short status;//会议审核状态
    private Short delFlag;//删除状态
//    @ManyToMany
//    @JoinTable(
//            name = "meeting_user",          // 关联表的名称
//            joinColumns = @JoinColumn(name = "booking_id"),  // 当前实体（Meeting）关联列
//            inverseJoinColumns = @JoinColumn(name = "user_id")  // 关联实体（User）关联列
//    )
    private List<SysUser>users;//参会人列表

    private Long deptId;
    private String bookedBy;


    private String contactInfo;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") //接收实参
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime startTime;
//    前端时间格式入参传参 传输
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
//    前端通过 JSON 提交数据，可以使用 @JsonFormat 来指定解析格式
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")// 后台  -> 前台 时间格式处理
    private LocalDateTime endTime;
    private String purpose;//会议用途
    private String theme;//会议主题

    //    @CreationTimestamp
    private LocalDateTime createdAt;
    //    @UpdateTimestamp
    private LocalDateTime updatedAt;


}
