package kr.smhrd.service;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import kr.smhrd.dao.CalenDao;

import kr.smhrd.entity.Calendar;

@Service
public class CalenService {
	@Autowired(required = false)
	private CalenDao dao;
	
	public ArrayList<Calendar> calenList(){
		return dao.calenList();
	}
	

}
