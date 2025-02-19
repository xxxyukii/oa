package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.entity.SysAttendance;
import com.ruoyi.common.core.domain.entity.SysAttendanceRecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
public interface SysAttendanceRecordMapper {
    /**
     * @param record
     * @return
     */
    int insertRecord(SysAttendanceRecord record);

    //todo 带参数的 前端点击两个时间段
    List<Map<String, Object>> getAttendanceList(@Param("dateStart") String dateStart, @Param("dateEnd") String dateEnd);

    void insertAttendance(SysAttendance attendance);

    //查询所有考勤记录表（+超级管理员）
    List<SysAttendance> getAllAttendance(SysAttendance attendance);

    //根据登录的用户Id展示考勤记录
    List<SysAttendance> getAttendanceByUserId(Long userId);

    Integer updateAttendance(SysAttendance attendance);

    //根据考勤attId获取详细信息
    SysAttendance selectAttendanceById(Long attId);
    //通过工号workId查询考勤记录
    SysAttendance selectAttendanceByWorkId(String workId);
    SysAttendance selectAttendanceByDate(LocalDate attendanceDate);

}

