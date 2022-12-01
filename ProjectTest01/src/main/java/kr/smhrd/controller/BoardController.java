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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Member;
import kr.smhrd.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired // DI
	private BoardService boardService;
	@RequestMapping("/")
	public String main() {
		return "smart/main";
	}
	@RequestMapping("/list")
	public String list(Model model){
		List<Board> list = boardService.getList();
		model.addAttribute("list", list);
		return "board/list"; // WEB-INF/views/board/list.jsp
	}
	@GetMapping("/register")
	public String register() { // GET
		return "board/register"; // register.jsp (글쓰기 화면)
	}
	@PostMapping("/register")
	public String register(Board vo) { // POST
		// 클라이언트 폼에서 넘어온 파라메터(title, content, writer)를 받아야 한다. (파라메터 수집 = Board)
		boardService.register(vo); // 등록완료
		// 등록완료 후 ~ 다시 리스트 페이지로 돌아가기
		return "redirect:/list"; // redirect
	}
	@GetMapping("/get") // get?idx=10&aa=aa : (QueryString:질의문자열) 공백 사용X
	public String get(@RequestParam("idx") int idx, Model model) {
		Board vo = boardService.get(idx);
		model.addAttribute("vo", vo);
		return "board/get"; // get.jsp
	}
	@GetMapping("/remove")
	public String remove(int idx, RedirectAttributes rttr) {
		rttr.addFlashAttribute("result", boardService.remove(idx));
		return "redirect:/list";
	}
	@GetMapping("/modify")
	public String modify(int idx, Model model) {
		Board vo = boardService.get(idx);
		model.addAttribute("vo", vo);
		return "board/modify"; // modify.jsp
	}
	@PostMapping("/modify")
	public String modify(Board vo) {
		boardService.modify(vo);
		return "redirect:/list";
	}
	@PostMapping("/login")
	public String login(Member vo, HttpSession session) { // memId, memPwd
		Member mvo = boardService.login(vo);
		if (mvo!=null) { // 로그인 성공 => 객체 바인딩 (HttpSession)
			session.setAttribute("mvo", mvo); // JSP -> ${empty mvo}로그인 실패, ${!empty mvo}로그인 성공
		}
		return "redirect:/list"; // <- 여기서 로그인 성공 여부를 체크
	}
	@PostMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 무효화 (로그아웃)
		return "redirect:/list";
	}
	@GetMapping("/calc")
	public @ResponseBody List<Board> calc() { // <-- 요청
		List<Board> list = boardService.getList();
		return list; // redirect or forward -> 응답(ajax) : Jackson Databind
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
	@RequestMapping("/register2")
	public String register2() {
		return "board/register2";
	}
}
