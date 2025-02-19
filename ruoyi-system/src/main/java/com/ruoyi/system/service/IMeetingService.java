package com.ruoyi.system.service;


import com.ruoyi.common.core.domain.entity.MeetingBooking;
import com.ruoyi.common.core.domain.entity.MeetingRoom;

import java.time.LocalDateTime;
import java.util.List;

public interface IMeetingService {
    List<MeetingRoom> getAllMeetingRoom(MeetingRoom meetingRoom);



//    查询会议室名称是否存在 且是否唯一
    public boolean checkRoomNameUnique(String roomName);

    //      新增会议室
    public int insertMeetingRoom(MeetingRoom meetingRoom);

    public int updatemeetingRoom(MeetingRoom meetingRoom);

    //根据会议室名称查询会议室信息
    public MeetingRoom getMeetingRoomByRoomName(String roomName);

    public MeetingRoom getMeetingRoomByRoomId(Long roomId);

    public int deleteMeetingRoomByIds(Long[] roomIds);

    public int addMeetingBooking(MeetingBooking meetingBooking);

    List<MeetingBooking> getAllMeetingBooking(MeetingBooking meetingBooking);
    //检查会议室时间冲突
    List<MeetingBooking> getConflictingBookings(Long roomId, LocalDateTime startTime, LocalDateTime endTime);

    public int deleteMeetingBookingByIds(Long[] bookingId,Long userId);

    public MeetingBooking selectBookingById(Long bookingId);
    public String getRoomNamelist();

    List<MeetingBooking> getAvailableRooms(LocalDateTime startTime,LocalDateTime endTime);

    public int updateMeetingBooking(MeetingBooking meetingBooking);
//会议室状态修改 是否停用
    int updateMeetingInUse(MeetingRoom meetingRoom);
}
