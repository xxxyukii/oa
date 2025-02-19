package com.ruoyi.system.service;


/**
 * xx通知
 * @author 小白
 */
public interface INotificationService {
    // 假设你有一个发送站内通知的功能
    public void sendNotification(Long assetManagerId, String message);


    // 发送邮件的示例方法
    void sendEmail(String recipient, String message);

}
