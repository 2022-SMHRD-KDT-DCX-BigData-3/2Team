package kr.smhrd.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Calendar;
import kr.smhrd.mapper.CalendarMapper;


@Service
public class CalendarService  {
	
	@Autowired
	private CalendarMapper calendarMapper;
	
	public List<Calendar> getList(){
		List<Calendar> list = calendarMapper.getList();
		return list;
	}
	
	public void add(Calendar vo) {
	     
	      calendarMapper.insert(vo);
	   }
	
	
	
}
