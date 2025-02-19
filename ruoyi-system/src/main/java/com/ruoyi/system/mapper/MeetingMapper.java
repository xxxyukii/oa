package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.entity.MeetingBooking;
import com.ruoyi.common.core.domain.entity.MeetingRoom;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface MeetingMapper {
    //获取所有会议室列表
    List<MeetingRoom> getAllMeetingRoom(MeetingRoom meetingRoom);

    //校验会议室名称是否唯一
    public int insertMeetingRoom(MeetingRoom meetingRoom);

    public int updateMeetingRoom(MeetingRoom meetingRoom);

    //校验会议室名称是否唯一
    public boolean checkRoomNameUnique(String roomName);

    public MeetingRoom getMeetingRoomByRoomId(Long roomId);

    int deleteMeetingRoomByIds(Long[] roomIds); //  delete from meeting_rooms where room_id in (1, 2, 3)
    //新增会议记录
    public int addMeetingBooking(MeetingBooking meetingBooking);
    //获取所有会议记录
    List<MeetingBooking> getAllMeetingBooking(MeetingBooking meetingBooking);
    //会议室时间冲突否？
    List<MeetingBooking> getConflictingBookings(@Param("roomId")Long roomId, @Param("startTime")LocalDateTime startTime, @Param("endTime")LocalDateTime endTime);

    public String getRoomNamelist();

    public MeetingBooking selectBookingById(Long bookingId);

    List<MeetingBooking> getAvailableRooms(@Param("startTime")LocalDateTime startTime, @Param("endTime")LocalDateTime endTime);

    public int deleteMeetingBookingByIds(Long[] bookingId);

    public int updateMeetingBooking(@Param("bookingId")Long bookingId, @Param("status")Short status, @Param("examineReason")String examineReason);
}
