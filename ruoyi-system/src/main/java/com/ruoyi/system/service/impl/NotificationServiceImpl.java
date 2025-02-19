package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.system.mapper.SysUserMapper;
import com.ruoyi.system.service.INotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl implements INotificationService {
    @Autowired
    private SysUserMapper sysUserMapper;
    @Override
    // 假设你有一个发送站内通知的功能
    public void sendNotification(Long assetManagerId, String message) {
        // 根据 asset_manager_id 获取设备管理员的联系方式（比如邮箱、手机等）
        SysUser sysUser = sysUserMapper.selectUserById(assetManagerId);
        String email = sysUser.getEmail();
        // 发送邮件/短信/站内通知
        sendEmail(email, message);
    }


    @Override
    public void sendEmail(String recipient, String message) {
        // 发送邮件的具体实现
        System.out.println("Sending email to: " + recipient);
        System.out.println("Message: " + message);



    }
}
