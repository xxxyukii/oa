package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.entity.RepairOrder;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RepairOrderMapper {
    //    提交维修单申请
    int saveRepairOrder(RepairOrder repairOrder);
}
