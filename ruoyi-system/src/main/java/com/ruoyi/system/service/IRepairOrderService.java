package com.ruoyi.system.service;

import com.ruoyi.common.core.domain.entity.RepairOrder;

import java.util.List;

public interface IRepairOrderService {
//    提交维修单申请
    int saveRepairOrder(RepairOrder repairOrder);
//    获取所有维修单数据
    List<RepairOrder> getRepairList(RepairOrder repairOrder);
}
