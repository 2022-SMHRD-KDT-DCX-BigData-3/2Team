
/*package kr.smhrd.mapper;

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
}*/

package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;

@Repository
@Mapper
public interface ApprovalMapper {

	// 전체 리스트 가져오기 메서드
	public List<Approval> getList();
	
	// 결재 게시물 가져오기 메서드
	public AllApproval read(int appro_id);
	
	// 승인반려 등록
	public void inget(UpApproval app);
	
	// 승인반려 사유 등록
	public void upget(UpApproval app);

	// 결재 등록창 데이터 가져오기 메서드
	public ViewApproval view(String member_name);
	
	// 일반결재 등록
	public void appro(Approval_auth app);

	// 결재 등록시 승인반려여부
	public void approv(Approval_auth app);

	// 지출결재 등록
	public void pay(Approval_auth app);
	
	// 휴가결재 등록
	public void vacation(Approval_auth app);
}

