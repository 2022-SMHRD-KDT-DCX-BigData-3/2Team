package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.entity.Board;
import kr.smhrd.service.ApprovalService;

@Controller
public class BoardController {

	@Autowired
	ApprovalService approvalService;
	
	@RequestMapping("/boardmain")
	public String boardmain() {
		return "board/boardmain";
	}
	@RequestMapping("/register2")
	public String register2() {
		return "board/register2";
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
		// 등록완료 후 ~ 다시 리스트 페이지로 돌아가기 redirect
		return "redirect:/list";
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
}
