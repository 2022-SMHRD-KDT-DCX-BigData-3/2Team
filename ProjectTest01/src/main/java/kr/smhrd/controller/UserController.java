package kr.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Member;
import kr.smhrd.service.MemberService;

@Controller
public class UserController {
	@Autowired
	MemberService memberService;
	
	@GetMapping("/")
	public String loginForm() {	
		return "/member/loginForm";
	}	
	@PostMapping("/login")
	public String login(Member vo, HttpSession session) {
		Member user = memberService.login(vo);
		session.setAttribute("user", user);
		if(user !=null) { //성공 여부결과를 객체바인딩(HttpSession) 
			session.setAttribute("user", user); 
			System.out.println("로그인 성공");
			return "redirect:/main";
		}
		System.out.println("로그인 실패");
		return "redirect:/login";
	} 
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); //세션 무효화(로그아웃)
		return "redirect:/login";
	}
}
