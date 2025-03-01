package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.RepairOrder;
import com.ruoyi.common.core.domain.enums.RepairStatusEnum;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.mapper.RepairOrderMapper;
import com.ruoyi.system.service.IAssetsService;
import com.ruoyi.system.service.IRepairOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

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

    @Override
    public List<RepairOrder> getRepairList(RepairOrder repairOrder) {

        return repairOrderMapper.getRepairList(repairOrder);
    }

    @Override
    public int repairStatusExamine(RepairOrder repairOrder) {
        Long repairId = repairOrder.getRepairId();
        Integer repairStatus = repairOrder.getRepairStatus();
        String remark = repairOrder.getRemark();
        return repairOrderMapper.repairStatusExamine(repairId,repairStatus,remark);
    }

    @Override
    public RepairOrder getRepairInfo(Long repairId) {
        if (repairId == null) {
            return new RepairOrder();
        }
        return repairOrderMapper.getRepairInfo(repairId);
    }
//    维修人员 确认开始维修
    @Override
    public int repairAction(RepairOrder repairOrder) {
        //获取当前登录用户id (从维修人页面中请求的)
        Long currentUserId = SecurityUtils.getUserId();
        repairOrder.setRepairman(currentUserId);
        repairOrder.setRepairStatus(RepairStatusEnum.REPAIR.getCode());
        return repairOrderMapper.repairAction(repairOrder);
    }

    @Autowired
    private IAssetsService assetsService;

    @Override
    public int repaired(RepairOrder repairOrder) {
        if (repairOrder.getProductChange() == 1) {
            repairOrder.setRepairStatus(RepairStatusEnum.REPAIRED.getCode());
        } else if (repairOrder.getProductChange() == 0) {
            repairOrder.setRepairStatus(RepairStatusEnum.CHANGE.getCode());
            Long assetId = repairOrder.getAssetId();
            assetsService.outDepot(assetId);
        }
        return repairOrderMapper.repaired(repairOrder);
    }

    @Override
    public int confirm(RepairOrder repairOrder) {
        repairOrder.setRepairStatus(RepairStatusEnum.CONFIRM.getCode());
        return repairOrderMapper.confirm(repairOrder);
    }
}
