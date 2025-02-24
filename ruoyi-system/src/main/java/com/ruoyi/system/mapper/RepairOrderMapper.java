package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.entity.RepairOrder;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RepairOrderMapper {
    //    提交维修单申请
    int saveRepairOrder(RepairOrder repairOrder);
    // 获取所有维修单申请表
    List<RepairOrder> getRepairList(RepairOrder repairOrder);
}
