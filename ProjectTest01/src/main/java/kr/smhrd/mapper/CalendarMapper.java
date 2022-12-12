package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Calendar;


@Repository
@Mapper
public interface CalendarMapper {

	public List<Calendar> getList(int memeber_id);
	
	public void inCal(int member_id);
	
	
}
