package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.App;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.Message;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;
import kr.smhrd.service.ApprovalService;
import kr.smhrd.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService messageService;
	
	@GetMapping("/message")
	public String message(HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("user");
		int member_id = member.getMEMBER_id();
		List<Message> mess = messageService.message(member_id);
		model.addAttribute("mess", mess);
		return "smart/message";
	}
	
}

