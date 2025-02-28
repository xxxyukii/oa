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

    // 审核维修单 改变审核状态
    int repairStatusExamine(Long repairId, Integer repairStatus, String remark);
    //    申请单详细信息
    RepairOrder getRepairInfo(Long repairId);
    // 维修人员 确认开始维修 状态改为维修
    int repairAction(RepairOrder repairOrder);
}
