package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.Commuting;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;
import kr.smhrd.service.ApprovalService;
import kr.smhrd.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@PostMapping("/profile")
	public String profile(@RequestParam("member_id") int member_id, Model model) {
		System.out.println("뭔데" + member_id);
		Member prof = memberService.profile(member_id);
		model.addAttribute("prof", prof);
		return "smart/profile";
	}
	@RequestMapping("/calender")
	public String calender() {
		return "smart/calender";
	}
}
