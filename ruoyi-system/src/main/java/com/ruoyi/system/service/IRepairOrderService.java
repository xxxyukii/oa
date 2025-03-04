package com.ruoyi.system.service;

import com.ruoyi.common.core.domain.entity.RepairOrder;

import java.util.List;

public interface IRepairOrderService {
    //    提交维修单申请
    int saveRepairOrder(RepairOrder repairOrder);

    //    获取所有维修单数据
    List<RepairOrder> getRepairList(RepairOrder repairOrder);

    // 审核维修单 改变审核状态
    int repairStatusExamine(RepairOrder repairOrder);
//    申请单详细信息
    public RepairOrder getRepairInfo(Long repairId);
//    维修人员提交单
    public int repairAction(RepairOrder repairOrder);

    int repaired(RepairOrder repairOrder);

    int confirm(RepairOrder repairOrder);
}
