package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.RepairOrder;
import com.ruoyi.system.mapper.RepairOrderMapper;
import com.ruoyi.system.service.IRepairOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RepairOrderServiceImpl implements IRepairOrderService {
    @Autowired
    private RepairOrderMapper repairOrderMapper;
    @Autowired
    private NotificationServiceImpl notificationService;
    @Override
    public int saveRepairOrder(RepairOrder repairOrder) {
        // 保存维修单到数据库
        int result = repairOrderMapper.saveRepairOrder(repairOrder);
        // 获取设备管理员 ID
        Long assetManagerId = repairOrder.getAssetManagerId();
        // 发送通知
        String message = "设备 " + repairOrder.getAssetId() + " 提交了维修申请，请及时处理！";
        if(assetManagerId!=null){
//            notificationService.sendNotification(assetManagerId, message);
        }

        return result;
    }
}
