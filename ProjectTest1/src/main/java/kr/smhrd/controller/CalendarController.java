package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Calendar;
import kr.smhrd.service.CalenService;



@Controller
@RequestMapping("calendar.do")
public class CalendarController {
	
	@Autowired(required = false)
	private CalenService service;

	@GetMapping(params="method=list")
	public String list() {
		return "calendar";
	}
	@GetMapping(params = "method=data")
	public @ResponseBody List<Calendar> data() {
		//d.addAttribute("list", service.calenList());
		return service.calenList();
	}
	
	
	
}
