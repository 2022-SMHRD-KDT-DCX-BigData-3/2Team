package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.ViewApproval;
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
	@GetMapping("/get")
	public String get(@RequestParam("appro_id") int appro_id, Model model) {
		System.out.println(appro_id);
		AllApproval vo = approvalService.select(appro_id);
		model.addAttribute("vo", vo);
		System.out.println(vo);
		System.out.println(vo.getDepart_name1());
		return "smart/get";
	}
	@GetMapping("/approvalp")
	public String approvalp(Model model) {
		ViewApproval view = approvalService.view();
		model.addAttribute("view", view);
		System.out.println(view);
		return "smart/approvalp";
	}
	@PostMapping("/approvalp")
	public String inser(Approval app) {
		approvalService.inser(app);
		return "redirect:/approvaln";
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
