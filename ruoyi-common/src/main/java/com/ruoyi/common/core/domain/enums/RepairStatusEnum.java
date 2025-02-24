package com.ruoyi.common.core.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum RepairStatusEnum {

    APPLIED(0, "已申请"),
    AGREE(0, "同意"),
    REJECT(0, "驳回");

    private Integer code;
    private String desc;
}
