package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.entity.Board;
import kr.smhrd.service.BoardService;

@RestController // JSON  데이터를 응답하는 Controller @RespoonsBody(X)
@RequestMapping("/api")
public class BoardRestController { // view-X ,json
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/boards")
		public List<Board> calc() {
		List<Board> list = boardService.getList();
		return list; // redirect or forward ---> 응답(ajax) : 
	}
	@DeleteMapping("/boards/{idx}")
	public void boardDelete(@PathVariable("idx")int idx) {
		// 구현
		boardService.remove(idx);
	}
	@PostMapping("/boards")
	public void boardInsert(Board vo) {
		vo.setMemId("imsi");
		boardService.register(vo);
	}
	@PutMapping("/boards") // @RequestBody -> JSON 받을때 : {"idx":1,"title":"111",..}
	public void boardUpdate(@RequestBody Board vo) {
		boardService.modify(vo);
	}
	@GetMapping("/boards/{idx}")
	public Board boardCount(@PathVariable("idx") int idx) {
		Board vo = boardService.get(idx);
		return vo;
	}
}
