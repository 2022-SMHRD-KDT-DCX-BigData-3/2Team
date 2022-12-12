package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Board;


@Repository
@Mapper
public interface BoardMapper {

	// 전체 리스트 가져오기 메서드
	public List<Board> listget();
	
	// 게시판 게시물 가져오기 메서드
	public Board getview(int b_seq);
	
	// 조회수 증가
	@Update("update Board set b_cnt=b_cnt+1 where b_seq=#{b_seq}")
	public void countUpdate(int b_seq);
	
	// 게시물 삭제
	public int boardremove(int b_seq);

//	// 댓글 삭제
//	public int commentsremove(int b_seq);
	
	// 게시물 수정
	public void boardmodify(Board vo);

}
