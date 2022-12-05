package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Board;


@Repository
@Mapper
public interface BoardMapper {

	// 전체 리스트 가져오기 메서드
		public List<Board> listget();
}
