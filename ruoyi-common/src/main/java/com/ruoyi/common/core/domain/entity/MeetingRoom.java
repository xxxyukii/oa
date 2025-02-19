package com.ruoyi.common.core.domain.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;

import java.time.LocalDateTime;

@Data
public class MeetingRoom {
    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY) 依赖数据库的自增特性
    private Long roomId;
    private String roomName;
    private String location;
    private Integer capacity;
    private String available;
    private String imageUrl;
    private String equipment;
    private String inUse; // 当前是否正在被使用

//    @CreationTimestamp 在实体首次插入时自动填充为当前时间。
    private LocalDateTime createdAt;

//    @UpdateTimestamp 在实体更新时自动填充为当前时间。
    private LocalDateTime updatedAt;

    private String began;
    private String end;


}
