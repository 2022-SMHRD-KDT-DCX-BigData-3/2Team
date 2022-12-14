package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import kr.smhrd.entity.Calendar;


@Repository
@Mapper
public interface CalendarMapper {

	public List<Calendar> getList(int memeber_id);

	public void searchVO(Calendar searchVO);
	
	public void CalUP(Calendar searchVO);
	
	public void CalDE(Calendar searchVO);
	
	public void CalCU(Calendar searchVO);
	
	/* public int selectCalCount(int member_id); */
	
}
