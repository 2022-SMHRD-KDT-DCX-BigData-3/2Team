
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
	@GetMapping("/get")
	public String get(@RequestParam("appro_id") int appro_id, Model model) {
		AllApproval vo = approvalService.select(appro_id);
		model.addAttribute("vo", vo);
		return "smart/get";
	}
	@PostMapping("/get")
	public String inget(UpApproval app) {
		approvalService.inget(app);
		return "redirect:/get?appro_id="+app.getAppro_id();
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


}

