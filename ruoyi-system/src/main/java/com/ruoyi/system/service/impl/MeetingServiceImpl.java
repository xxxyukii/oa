package com.ruoyi.system.service.impl;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.domain.entity.MeetingBooking;
import com.ruoyi.common.core.domain.entity.MeetingRoom;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysPost;
import com.ruoyi.system.mapper.MeetingMapper;
import com.ruoyi.system.service.IMeetingService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;

@Service
public class MeetingServiceImpl implements IMeetingService {
    @Autowired
    private MeetingMapper meetingMapper;

    @Override
    public List<MeetingRoom> getAllMeetingRoom(MeetingRoom meetingRoom) {
        return meetingMapper.getAllMeetingRoom(meetingRoom);
    }

    @Override
    public boolean checkRoomNameUnique(String roomName) {

//        -1L：作为默认值表示“无效”或“特殊”值，  避免 使 用 null。
//StringUtils.isNull(post.getPostId())：
// 用于判断 post.getPostId() 是否为 null，如果是 null，将 postId 设置为 -1L。

//        Long roomId = StringUtils.isNull(meetingRoom.getRoomId()) ? -1L : meetingRoom.getRoomId();
//        MeetingRoom info = meetingMapper.checkUserNameUnique(meetingRoom.getRoomName());
//        if (StringUtils.isNotNull(info) && info.getRoomId().longValue() != roomId.longValue()) {
//            return UserConstants.NOT_UNIQUE;
//        }

        return meetingMapper.checkRoomNameUnique(roomName);


    }

    @Override
    public int insertMeetingRoom(MeetingRoom meetingRoom) {
        return meetingMapper.insertMeetingRoom(meetingRoom);
    }

    @Override
    public int updatemeetingRoom(MeetingRoom meetingRoom) {
        return meetingMapper.updateMeetingRoom(meetingRoom);
    }
    //状态修改
    @Override
    public int updateMeetingInUse(MeetingRoom meetingRoom) {
        return meetingMapper.updateMeetingRoom(meetingRoom);
    }

    @Override
    public MeetingRoom getMeetingRoomByRoomName(String roomName) {
        return null;
    }

    @Override
    public MeetingRoom getMeetingRoomByRoomId(Long roomId) {
        MeetingRoom meetingRoom = new MeetingRoom();
        meetingRoom.setRoomId(roomId);
        List<MeetingRoom> allMeetingRoom = meetingMapper.getAllMeetingRoom(meetingRoom);
        MeetingRoom meetingRoom1 = allMeetingRoom.get(0);
        return meetingRoom1;
    }

    @Override
    public int deleteMeetingRoomByIds(Long[] roomIds) {
        return meetingMapper.deleteMeetingRoomByIds(roomIds);
    }

    @Override
    public int addMeetingBooking(MeetingBooking meetingBooking) {
        return meetingMapper.addMeetingBooking(meetingBooking);
    }

    @Override
    public List<MeetingBooking> getAllMeetingBooking(MeetingBooking meetingBooking) {

        return meetingMapper.getAllMeetingBooking(meetingBooking);
    }

    @Override
    public List<MeetingBooking> getConflictingBookings(Long roomId, LocalDateTime startTime, LocalDateTime endTime) {
        return meetingMapper.getConflictingBookings(roomId, startTime, endTime);
    }

    //    事务管理：为了确保数据一致性，在 deleteMeetingBookingByIds 方法上加了
//    @Transactional 注解，确保一组删除操作要么全部成功，要么全部回滚。
    @Override
    public int deleteMeetingBookingByIds(Long[] bookingIds, Long userId) {

        // 遍历每个 bookingId 进行逐个删除
        for (Long bookingId : bookingIds) {
            // 查询每个会议记录
            MeetingBooking meetingBooking = meetingMapper.selectBookingById(bookingId);
            // 如果找不到会议记录，抛出异常
            if (meetingBooking == null) {
                throw new ServiceException("未找到会议记录，bookingId：" + bookingId);
            }
            // 获取会议记录的用户ID
            Long getUserId = meetingBooking.getSysUser().getUserId();
            // 验证当前登录用户是否是预约人
            if (getUserId == null || !getUserId.equals(userId)) {
                throw new ServiceException(userId + " 不是当前用户 " + getUserId);
            }
            //todo 抛出往上走一级 不写抛 都不执行这下一步了
            //验证会议记录是否为“申请中”状态
            if (meetingBooking.getStatus() != 0) {
                throw new ServiceException("会议记录 " + bookingId + " 不是审核中状态，无法删除");
            }
        }
        return meetingMapper.deleteMeetingBookingByIds(bookingIds);

    }

    @Override
    public MeetingBooking selectBookingById(Long bookingId) {
        return meetingMapper.selectBookingById(bookingId);
    }


    @Override
    public String getRoomNamelist() {
        return meetingMapper.getRoomNamelist();
    }

    @Override
    public List<MeetingBooking> getAvailableRooms(LocalDateTime startTime, LocalDateTime endTime) {
        return meetingMapper.getAvailableRooms(startTime, endTime);
    }

    @Override
    public int updateMeetingBooking(MeetingBooking meetingBooking) {
        Short status = meetingBooking.getStatus();
        Long bookingId = meetingBooking.getBookingId();
        String examineReason = meetingBooking.getExamineReason();


        return meetingMapper.updateMeetingBooking(bookingId, status, examineReason);
    }


}
