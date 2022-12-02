package kr.smhrd.dao;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Calendar;
@Repository
@Mapper
public interface CalenDao {
	public ArrayList<Calendar> calenList();

}