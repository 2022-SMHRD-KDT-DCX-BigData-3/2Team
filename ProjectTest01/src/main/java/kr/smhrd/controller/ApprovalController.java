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
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.App;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;
import kr.smhrd.service.ApprovalService;

@Controller
public class ApprovalController {

	@Autowired
	ApprovalService approvalService;
	
	@RequestMapping("/approvaln")
	public String approvaln(Model model) {
		List<Approval> list = approvalService.getList();
		model.addAttribute("list", list);
		return "smart/approvaln";
	}
	@RequestMapping("/approvald")
	public String approvald(Model model) {
		List<Approval> list = approvalService.getList();
		model.addAttribute("list", list);
		return "smart/approvald";
	}
	@RequestMapping("/approvale")
	public String approvale(Model model) {
		List<Approval> list = approvalService.getList();
		model.addAttribute("list", list);
		return "smart/approvale";
	}
	@GetMapping("/get")
	public String get(@RequestParam("appro_id") int appro_id, Model model) {
		AllApproval vo = approvalService.select(appro_id);
		model.addAttribute("vo", vo);
		System.out.println(vo);
		return "smart/get";
	}
	@PostMapping("/get")
	public String inget(UpApproval app) {
		approvalService.inget(app);
		return "redirect:/main";
	}
	@GetMapping("/approvalp")
	public String approvalp(HttpSession session ,Model model) {
		Member member = (Member) session.getAttribute("user");
		String member_name = member.getMEMBER_NAME();
		ViewApproval view = approvalService.view(member_name);
		model.addAttribute("view", view);
		return "smart/approvalp";
	}
	@PostMapping("/approvalp")
	public String inser(Approval_auth app) {
		approvalService.inser(app);
		return "redirect:/approvaln";
	}
	@RequestMapping("/main")
	public String main(HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("user");
		int member_id = member.getMEMBER_id();
		App ap = approvalService.main(member_id);
		List<App> ap2 = approvalService.main2();
		model.addAttribute("ap", ap);
		model.addAttribute("ap2", ap2);
		return "smart/main";
	}
	
	@PostMapping("/main2")
	@ResponseBody
	public List<App> main2() {
		return approvalService.main2();
	}
}

