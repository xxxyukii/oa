package com.ruoyi.common.core.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum RepairStatusEnum {

    APPLIED(0, "已申请"),
    AGREE(1, "维修中"),
    REJECT(2, "已完成");

    private Integer code;
    private String desc;
}
