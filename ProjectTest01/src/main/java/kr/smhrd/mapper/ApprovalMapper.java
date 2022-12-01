package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.ViewApproval;

@Repository
@Mapper
public interface ApprovalMapper {

	// 전체 리스트 가져오기 메서드
	public List<Approval> getList();
	
	// 결재 게시물 가져오기 메서드
	public AllApproval read(int appro_id);

	// 결재 등록창 데이터 가져오기 메서드
	public ViewApproval view();
	
	// 결재 등록
	public void inser(Approval app);
}
