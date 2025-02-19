package com.ruoyi.common.core.domain.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.ruoyi.common.annotation.Excel;
import lombok.Data;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Map;

/**
 * 考勤表 sys_Attendance
 *
 * @author xxx
 */
@Data
public class SysAttendance {

    /**
     * 考勤表ID
     */
    //todo 通常用于Java中的导出Excel表格时给表格的列添加一些元数据
    @Excel(name = "考勤序号", type = Excel.Type.EXPORT, cellType = Excel.ColumnType.NUMERIC, prompt = "考勤编号")
    private long attId;

    /**
     * 用户ID
     */
    @Excel(name = "用户序号", type = Excel.Type.EXPORT, cellType = Excel.ColumnType.NUMERIC, prompt = "用户编号")
    private long userId;

    /**
     * 部门ID
     */
    @Excel(name = "部门编号", type = Excel.Type.IMPORT, cellType = Excel.ColumnType.NUMERIC)
    private long deptId;

    /**
     * 部门名称
     */
    @Excel(name = "部门名称", type = Excel.Type.ALL)
    private String deptName;

    /**
     * 用户名称
     */
    @Excel(name = "用户名称", type = Excel.Type.ALL)
    private String userName;

    /**
     * 员工工号
     */
    @Excel(name = "员工工号", type = Excel.Type.ALL)
    private String workId;

    /**
     * 考勤日期
     */
    @Excel(name = "考勤日期", width = 30, dateFormat = "yyyy-MM-dd", type = Excel.Type.ALL)
    private LocalDate attendanceDate;

    private String beginTime;
    private String endTime;

    /**
     * 上班打卡时间
     */
    @Excel(name = "上班打卡时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss", type = Excel.Type.ALL)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime amTime;

    /**
     * 下班打卡时间
     */
    @Excel(name = "下班打卡时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss", type = Excel.Type.ALL)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime pmTime;

    /**
     * 备注
     */
    @Excel(name = "备注", width = 30, type = Excel.Type.ALL)
    private String remark;


    //？
    private Map<String, String> params;
    //  员工表
//    private SysUser sysUser;
    //实时记录表
//    private SysAttendanceRecord sysAttendanceRecord;
    // 部门表
//    private SysDept sysDept;

    //一对多 例如 一个订单里 有不同商品 不同商品都有自己的商品id等  <collection>
//    private  List<SysUser> sysUserList;
    @Override
    public String toString() {
        return "SysAttendance{" +
                "attId=" + attId +
                ", userId=" + userId +
                ", deptId=" + deptId +
                ", userName='" + userName + '\'' +
                ", attendanceDate=" + attendanceDate +
                ", amTime=" + amTime +
                ", pmTime=" + pmTime +
                ", remark='" + remark + '\'' +

                '}';
    }

}
