package com.ruoyi.common.core.domain.entity;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class RepairOrder {
    private Long repairId;
    private Long assetId;
    private Long userId;
    private String userName;
    private LocalDate repairDate;
    private String description;
    private String imageUrl;
    private Integer repairStatus;
    private Long assetManagerId;
    private Integer productChange;
    private LocalDateTime createdAt;
}
