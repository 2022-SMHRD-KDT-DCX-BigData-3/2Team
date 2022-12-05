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

import kr.smhrd.entity.Commuting;
import kr.smhrd.service.CommutingService;

@Controller
public class CommutingController {

	@Autowired
	CommutingService commutingService;

	@RequestMapping("/commuting")
	public String getcomm(Model model) {
		List<Commuting> comm = commutingService.getcomm();
		model.addAttribute("comm", comm);
		System.out.println(comm);
		return "smart/Commuting";
	}
	@PostMapping("/scommuting")
	public String scomm(Commuting comm) {
		commutingService.scomm(comm);
		return "redirect:/commuting";
	}
	@PostMapping("/ecommuting")
	public String ecomm(Commuting comm) {
		commutingService.ecomm(comm);
		return "redirect:/commuting";
	}
}
