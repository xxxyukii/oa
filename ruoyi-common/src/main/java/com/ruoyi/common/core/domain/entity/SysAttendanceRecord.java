package com.ruoyi.common.core.domain.entity;

import com.ruoyi.common.annotation.Excel;

import java.util.Date;

/**
 * 实时打卡记录表 sys_attendance_record
 *
 * @author ruoyi
 */

public class SysAttendanceRecord {
    public Long getRecordId() {
        return recordId;
    }

    public void setRecordId(Long recordId) {
        this.recordId = recordId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    /**
     * 实时记录ID
     */
    //todo 通常用于Java中的导出Excel表格时给表格的列添加一些元数据
    @Excel(name = "实时记录id", type = Excel.Type.EXPORT, cellType = Excel.ColumnType.NUMERIC, prompt = "用户编号")
    private Long recordId;

    /**
     * 用户ID
     */
    @Excel(name = "用户序号", type = Excel.Type.EXPORT, cellType = Excel.ColumnType.NUMERIC, prompt = "用户编号")
    private Long userId;

    /**
     * 打卡日期
     */
    @Excel(name = "打卡日期", width = 30, dateFormat = "yyyy-MM-dd", type = Excel.Type.EXPORT)
    private Date checkDate;

    /**
     * 打卡时间
     */
    @Excel(name = "打卡时间", width = 30, dateFormat = "HH:mm:ss", type = Excel.Type.EXPORT)
    private Date checkTime;

    /**
     * 备注
     */
    @Excel(name = "备注", readConverterExp = "0=正常,1=异常" ,type = Excel.Type.EXPORT)
    private String remark;

    public Date getAmTime() {
        return amTime;
    }

    public void setAmTime(Date amTime) {
        this.amTime = amTime;
    }

    public Date getPmTime() {
        return pmTime;
    }

    public void setPmTime(Date pmTime) {
        this.pmTime = pmTime;
    }

    /**
     * am pm 筛选判断查询出来的字段
     */
    private Date amTime;
    private Date pmTime;



    /**
     * count 打卡计数
     */
    private int count;


    @Override
    public String toString() {
        return "SysAttendanceRecord{" +
                "recordId=" + recordId +
                ", userId=" + userId +
                ", checkDate=" + checkDate +
                ", checkTime=" + checkTime +
                ", remark='" + remark + '\'' +
                ", amTime=" + amTime +
                ", pmTime=" + pmTime +
                ", count=" + count +
                '}';
    }








}
