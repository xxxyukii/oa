package com.ruoyi.common.core.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum EquipmentStatusEnum {

    NORMAL(0, "正常"),
    REPAIR(1, "维修"),
    SCRAP(2, "报废");

    private Integer code;

    private String desc;

//@AllArgsConstructor 自动生成↓构造函数
//    EquipmentStatusEnum(Integer code, String desc) {
//        this.code = code;
//        this.desc = desc;
//    }
}
