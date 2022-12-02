package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Approval;

@Repository
@Mapper
public interface ApprovalMapper {

	// 전체 리스트 가져오기 메서드
	public List<Approval> getList();
	
	// 결재 게시물 가져오기 메서드
	public Approval read(Long appro_id);
}
