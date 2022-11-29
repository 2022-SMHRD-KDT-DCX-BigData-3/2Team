package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.Approval;
import kr.smhrd.service.ApprovalService;

@Controller
public class ApprovalController {

	@Autowired
	ApprovalService approvalService;
	
	@RequestMapping("/")
	public String main() {
		return "smart/main";
	}
	
	@RequestMapping("/approvaln")
	public String approvaln(Model model) {
		List<Approval> list = approvalService.getList();
		model.addAttribute("list", list);
		return "smart/approvaln";
	}
//	@GetMapping("/get")
//	public String get(@RequestParam("appro_id") Long appro_id, Model model) {
//		Approval vo = approvalService.get(appro_id);
//		model.addAttribute("vo", vo);
//		return "smart/get";
//	}
	@RequestMapping("/approvalp")
	public String approvalp() {
		return "smart/approvalp";
	}
	@RequestMapping("/get")
	public String get() {
		return "smart/get";
	}
	@RequestMapping("/profile")
	public String profile() {
		return "smart/profile";
	}
	@RequestMapping("/mail")
	public String mail() {
		return "smart/mail";
	}
	@RequestMapping("/member")
	public String member() {
		return "member/member";
	}
	@RequestMapping("/boardmain")
	public String boardmain() {
		return "board/boardmain";
	}
	@RequestMapping("/calender")
	public String calender() {
		return "smart/calender";
	}
	@RequestMapping("/login")
	public String login() {
		return "smart/login";
	
	}
}
