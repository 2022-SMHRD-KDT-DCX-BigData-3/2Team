package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Calendar;
import kr.smhrd.service.CalendarService;


@Controller
public class CalendarController {
	

	@Autowired
	CalendarService calendarService;
	
	@RequestMapping("/calendar")
	String calendar() {
		return "smart/calendar";
	}
	  	
	
	@PostMapping("calendar_load")
	@ResponseBody
	public List<Calendar> calendar_load(Model model) {
	  List<Calendar> list=calendarService.getList();
	  model.addAttribute("list",list);
	  return list;
	}
	
	
	
	@PostMapping("calendar_add")
	   public String edit(Calendar vo) { // <<이거하려면 원래 Board vo=new Board(); 해야함 근데 스프링은 걍 저렇게 해도 다해줌 ㅈㄴ신기함
	      // 클라이언트 홈에서 넘어온 파라미터를 받아야함 (title, content, writer)를 받아야한다.(파라메터수집=Board)
	      calendarService.add(vo); //등록완료
	      //등록완료후 다시 리스트 페이지로?
	      return "redirect:/smart/calendar";
	   }
	
		
	
	
	
}
