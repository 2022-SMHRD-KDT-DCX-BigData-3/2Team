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

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	@RequestMapping("main_calendar")
	public String calendar_main(HttpSession httpsession) {
		Member member=(Member) httpsession.getAttribute("user");
		List<Calendar> list = calendarService.getList(member.getMEMBER_id());
		return "smart/main";
	}
	  	
	
	@PostMapping("calendar_load")
	@ResponseBody
	public List<Calendar> calendar_load(Model model,HttpSession httpsession) {
	  Member member=(Member) httpsession.getAttribute("user");
	  List<Calendar> list=calendarService.getList(member.getMEMBER_id());
	  model.addAttribute("list",list);
	  return list;
	}
	
	@PostMapping("calendar_main")
	@ResponseBody
	public List<Calendar> calendar_admin(Model model,HttpSession httpsession) {
	  Member member=(Member) httpsession.getAttribute("user");
	  List<Calendar> list=calendarService.getList(member.getMEMBER_id());
	  model.addAttribute("list",list);
	  return list;
	}
	
	
	@RequestMapping(value = "/adms/calendar/management/create_ajx.do",method = RequestMethod.POST)
	@ResponseBody
	public String createAction(
			Calendar cal,int id,
	        HttpServletRequest request,
	        HttpServletResponse res,
	        ModelMap model,HttpSession httpsession) throws Exception {
		
		Member member=(Member) httpsession.getAttribute("user");
		
	    JSONObject obj = new JSONObject();
	    
	    res.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = res.getWriter();
	    System.out.println(cal);

	    cal.setCALENDAR_ID(id);
	    cal.setMEMBER_ID(member.getMEMBER_id());

	    calendarService.createCalendar(cal);

	    obj.put("success", "ok");
	    out.print(obj);
	    return null;
	}
	
	@RequestMapping(value = "/adms/calendar/management/update_ajx.do",method = RequestMethod.POST)
	@ResponseBody
	public String updateAction(
			Calendar cal,int id,
	        HttpServletRequest request,
	        HttpServletResponse res,
	        ModelMap model,HttpSession httpsession) throws Exception {
		
		Member member=(Member) httpsession.getAttribute("user");
		
	    JSONObject obj = new JSONObject();
	    
	    res.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = res.getWriter();
	    

	    cal.setCALENDAR_ID(id);
	    cal.setMEMBER_ID(member.getMEMBER_id());

	    System.out.println(cal);
	    
	    calendarService.updateCalendar(cal);

	    obj.put("success", "ok");
	    out.print(obj);
	    return null;
	}
	
	@RequestMapping(value = "/adms/calendar/management/delete_ajx.do",method = RequestMethod.POST)
	@ResponseBody
	public String deleteAction(
			Calendar cal,int id,
	        HttpServletRequest request,
	        HttpServletResponse res,
	        ModelMap model,HttpSession httpsession) throws Exception {
		
		Member member=(Member) httpsession.getAttribute("user");
		
	    JSONObject obj = new JSONObject();
	    
	    res.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = res.getWriter();
	    

	    cal.setCALENDAR_ID(id);
	    cal.setMEMBER_ID(member.getMEMBER_id());

	    System.out.println(cal);
	    
	    calendarService.deleteCalendar(cal);

	    obj.put("success", "ok");
	    out.print(obj);
	    return null;
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/calendar/calCount", method=RequestMethod.POST,
	 * produces = "application/text; charset=utf8") public String
	 * getCalCount(HttpServletRequest req,HttpSession httpsession) {
	 * 
	 * HttpSession session = req.getSession(); Member member=(Member)
	 * httpsession.getAttribute("user");
	 * 
	 * int count = calendarService.getCalCount(member.getMEMBER_id());
	 * 
	 * System.out.println("getCalCount : "+count);
	 * 
	 * return count+""; }
	 */
	
	
	
	
	
}
