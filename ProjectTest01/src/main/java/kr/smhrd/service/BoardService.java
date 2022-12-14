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
		List<Board> list = boardMapper.listget();
		return list;
	}
//	// 글 저장 메서드 만들기
    public void register(Board vo) {
		boardMapper.insert(vo);
	}
	public Board getview(int b_seq) {
		// 조회수를 1증가 ~~
		boardMapper.countUpdate(b_seq);
		Board vo = boardMapper.getview(b_seq);
		return vo;
	}
	public int boardremove(int b_seq) {
		return boardMapper.boardremove(b_seq);
//		boardMapper.commentsremove(b_seq);
	}
	public void boardmodify(Board vo) {
		boardMapper.boardmodify(vo);

	}
}
