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
import kr.smhrd.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/boardmain")
	public String boardmain() {
		return "board/boardmain";
	}
	@RequestMapping("/list")
	public String listget(Model model){
		List<Board> list = boardService.listget();
		model.addAttribute("list", list);
		return "board/list"; // WEB-INF/views/board/list.jsp
	}@RequestMapping("/register2")
	public String register2() {
		return "board/register2";
	}
}
