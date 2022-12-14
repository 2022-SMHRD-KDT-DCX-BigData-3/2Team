package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.App;
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
	
	// 결재 대기 개수
	public int main0();

	// 결재 진행 개수
	public int main1();
	
	// 결재 완료 개수
	public int main2();

	// 본인 결재 대기 개수
	public int main3(int member_id);
	
	// 본인 결재 확인 개수
	public int main4(int member_id);

	// 본인 일정 개수
	public int main5(int member_id);

	// 회사 일정
	public List<App> main6();
}

