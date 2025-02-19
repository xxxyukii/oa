package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.SysAttendance;
import com.ruoyi.common.core.domain.entity.SysAttendanceRecord;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.bean.BeanValidators;
import com.ruoyi.system.mapper.SysAttendanceRecordMapper;
import com.ruoyi.system.service.ISysAttendanceRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.Validator;
import java.util.Collections;
import java.util.List;
import java.util.Map;


@Service
public class SysAttendanceRecordServiceImpl implements ISysAttendanceRecordService {
    @Autowired
    private SysAttendanceRecordMapper attendanceRecordMapper;
    @Autowired
    protected Validator validator;

    @Override
    public int insertRecord(SysAttendanceRecord record) {
            //Local variable 'rows' is redundant -　変数の冗長性
        //冗長な変数を避けることで、コードが簡潔で保守しやすくなります。
        return attendanceRecordMapper.insertRecord(record);

    }


    @Override
    public List<Map<String, Object>> getAttendanceList(String dateStart, String dateEnd) {
        return attendanceRecordMapper.getAttendanceList(dateStart, dateEnd);


    }

    @Override
    public List<SysAttendance> getAllAttendance(SysAttendance attendance) {
        return attendanceRecordMapper.getAllAttendance(attendance);
    }

    @Override
    public List<SysAttendance> getAttendanceByUserId(Long userId) {
        return attendanceRecordMapper.getAttendanceByUserId(userId);
    }

    @Override
    public Integer updateAttendance(SysAttendance attendance) {
        return attendanceRecordMapper.updateAttendance(attendance);
    }

    @Override
    public SysAttendance selectAttendanceById(Long attId) {
        return attendanceRecordMapper.selectAttendanceById(attId);
    }

    @Override
    public SysAttendance selectAttendanceByWorkId(String workId) {
        return attendanceRecordMapper.selectAttendanceByWorkId(workId);
    }

    /**
     * 导入用户数据
     *
     * @param attendanceList  考勤数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName        操作用户
     * @return 结果
     */
    @Override
    public String importAttendance(List<SysAttendance> attendanceList, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(attendanceList) || attendanceList.size() == 0) {
            throw new ServiceException("导入考勤数据不能为空！");
        }
        int successNum = 0;//成功的考勤数量
        int failureNum = 0;//失败的考勤数量
        //拼接成功和失败的详细信息
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (SysAttendance attendance : attendanceList) {
            try {
                // 验证是否存在这个用户 根据工号查
                // 还是同时验证 有没有这个考勤id 用户在同一天的考勤记录
//            SysUser u = userMapper.selectUserByUserName(user.getUserName());

                // 验证工号
                SysAttendance a = attendanceRecordMapper.selectAttendanceByWorkId (attendance.getWorkId());
                // 验证考勤日期
                SysAttendance d = attendanceRecordMapper.selectAttendanceByDate (attendance.getAttendanceDate());
//                logger.info("Received attendanceDate: {}", attendance.getAttendanceDate());
                if (StringUtils.isNull(a)&&StringUtils.isNull(d)) {
                    //xx新考勤记录登录
                    BeanValidators.validateWithException(validator, attendance); //xx验证数据格式
                    //是谁来创建的 这个可能会需要吧 先暂时不考虑
//                attendance.setCreateBy(operName);
                    //插入新数据
                    attendanceRecordMapper.insertAttendance(attendance);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + attendance.getAttId() + " 导入成功");
                } else if (isUpdateSupport) { //如果考勤id已存在且 isUpdateSupport 为 true
                    BeanValidators.validateWithException(validator, attendance);
                    attendance.setWorkId(a.getWorkId());
                    attendance.setAttendanceDate(a.getAttendanceDate());
                    //是谁来更新操作的 如果人事多个 需要搞一下  先暂时不考虑
//                user.setUpdateBy(operName);
                    attendanceRecordMapper.updateAttendance(attendance);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + attendance.getAttId() + " 更新成功");
                }
            }catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + attendance.getWorkId() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());

            }

        }
        if (failureNum > 0) {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new ServiceException(failureMsg.toString());
        } else {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }

    @Override
    public void insertAttendance(SysAttendance attendance) {
        attendanceRecordMapper.insertAttendance(attendance);
    }


}
