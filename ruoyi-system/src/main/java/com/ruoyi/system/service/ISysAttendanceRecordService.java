package com.ruoyi.system.service;

import com.ruoyi.common.core.domain.entity.SysAttendance;
import com.ruoyi.common.core.domain.entity.SysAttendanceRecord;
import com.ruoyi.common.core.domain.entity.SysUser;

import java.util.List;
import java.util.Map;

public interface ISysAttendanceRecordService {
    public int insertRecord(SysAttendanceRecord record);


//    List<SysAttendanceRecord> getRecordList();

    void insertAttendance(SysAttendance attendance);

    //员工表和record多表联查
    List<Map<String, Object>> getAttendanceList(String dateStart, String dateEnd);

    //考勤记录表格SysAttendance
    List<SysAttendance> getAllAttendance(SysAttendance attendance);

    //根据登录的用户Id展示考勤记录
    List<SysAttendance> getAttendanceByUserId(Long userId);

    //修改考勤记录表
    Integer updateAttendance(SysAttendance attendance);

    //根据考勤attId获取详细信息
    SysAttendance selectAttendanceById(Long attId);

    //通过工号workId查询考勤记录
    public SysAttendance selectAttendanceByWorkId(String workId);

    /**
     * 导入用户数据
     *
     * @param attendanceList        考勤数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName        操作用户
     * @return 结果
     */
    public String importAttendance(List<SysAttendance> attendanceList, Boolean isUpdateSupport, String operName);
}
