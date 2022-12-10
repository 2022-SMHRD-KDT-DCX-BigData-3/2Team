package kr.smhrd.controller;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import aj.org.objectweb.asm.TypeReference;
import kr.smhrd.entity.Board;
import kr.smhrd.entity.Calendar;
import kr.smhrd.entity.Member;
import kr.smhrd.mapper.CalendarMapper;
import kr.smhrd.service.CalendarService;


@Controller
public class CalendarController {
	

	@Autowired
	CalendarService calendarService;
	
	@RequestMapping("/calendar")
	public String calendar(HttpSession httpsession) {
		Member member=(Member) httpsession.getAttribute("user");
		List<Calendar> list = calendarService.getList(member.getMEMBER_id());
		return "smart/calendar";
	}
	  	
	
	@PostMapping("calendar_load")
	@ResponseBody
	public List<Calendar> calendar_load(Model model,HttpSession httpsession) {
	  Member member=(Member) httpsession.getAttribute("user");
	  List<Calendar> list=calendarService.getList(member.getMEMBER_id());
	  model.addAttribute("list",list);
	  return list;
	}
	
	@PostMapping("calendar_create")
	@ResponseBody
	public  List<Calendar> calendar_create(Model model, HttpSession httpsession) {
		Member member=(Member) httpsession.getAttribute("user");
		List<Calendar> list=calendarService.getList(member.getMEMBER_id());
		model.addAttribute("list",list);
		return  list;
	}

	
	
		
	
	
	
}
