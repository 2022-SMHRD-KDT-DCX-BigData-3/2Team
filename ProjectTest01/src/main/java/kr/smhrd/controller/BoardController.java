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

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Board;
import kr.smhrd.service.ApprovalService;
import kr.smhrd.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/list")
	public String listget(Model model){
		List<Board> list = boardService.listget();
		model.addAttribute("list", list);
		return "board/list";
	}
	@RequestMapping("/getview")
	public String getview(@RequestParam("b_seq") int b_seq, Model model) {
		Board vo = boardService.getview(b_seq);
		model.addAttribute("vo", vo);
		return "board/getview";
	}
	@RequestMapping("/register2")
	public String register2() {
		return "board/register2";
	}
	@GetMapping("/boardremove")
	public String boardremove(@RequestParam("b_seq") int b_seq, RedirectAttributes rttr) {
		rttr.addFlashAttribute("result", boardService.boardremove(b_seq));
		return "redirect:/list";
	}
	@PostMapping("/boardmodify")
	public String boardmodify(Board vo) {
		boardService.boardmodify(vo);
		return "redirect:/list";
	}
}
