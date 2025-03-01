package com.ruoyi.common.core.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum RepairStatusEnum {

    APPLIED(0, "申请中"),
    REPAIR(1, "维修中"),
    REPAIRED(2, "已维修"),
    CONFIRM(3, "已确认"),
    CHANGE(4, "已更换"),;

    private Integer code;
    private String desc;
}
