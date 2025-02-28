package com.ruoyi.common.core.domain.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class RepairOrder {
    private Long repairId;
    private Long assetId;
    private Long userId;
    private String userName;
    @DateTimeFormat(pattern = "yyyy-MM-dd") //它没有格式 它需要指定的 接收实参
    @JsonFormat(pattern = "yyyy-MM-dd")    //json 解成 key value key value
    private LocalDate repairDate;
    private String description;
    private String imageUrl;
    private String remark;
    private Long repairman;
    private Integer repairStatus;
    private Long assetManagerId;
    private Short productChange;
    private LocalDateTime createdAt;
    private Integer repairMethod;
    private Assets assets;
}
