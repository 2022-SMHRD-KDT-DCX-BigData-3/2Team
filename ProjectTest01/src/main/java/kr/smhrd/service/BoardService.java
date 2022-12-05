package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Member;
import kr.smhrd.mapper.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	// 전체 리스트를 가져오는 메서드
	public List<Board> listget(){
		// 비즈니스로직을 처리하기위해서..
		List<Board> list = boardMapper.listget();
		return list;
	}
	// 글 저장 메서드 만들기
	public void register(Board vo) {
		//추가로직처리~
		boardMapper.insert(vo);
	}
	public Board getview(int idx) {
		// 조회수를 1증가 ~~
		boardMapper.countUpdate(idx);
		Board vo = boardMapper.getview(idx);
		return vo;
	}
	public int remove(int idx) {
		return boardMapper.delete(idx); // 1 or 0
	}
	public void modify(Board vo) {
		boardMapper.update(vo);
	}
}
