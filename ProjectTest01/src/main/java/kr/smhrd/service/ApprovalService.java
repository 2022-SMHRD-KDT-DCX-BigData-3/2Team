package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.ViewApproval;
import kr.smhrd.mapper.ApprovalMapper;

@Service
public class ApprovalService {
	
	@Autowired
	private ApprovalMapper approvalMapper;
	
	// 전체 리스트를 가져오는 메서드
	public List<Approval> getList(){
		List<Approval> list = approvalMapper.getList();
		return list;
	}
	
	// 결재 게시물 조회
	public AllApproval select(int appro_id) {
		AllApproval get = approvalMapper.read(appro_id);
		System.out.println(get);
		return get;
	}

	// 결재 게시물 등록창
	public ViewApproval view() {
		ViewApproval view = approvalMapper.view();
		return view;
	}
	
	// 결재 등록
	public void inser(Approval app) {
		approvalMapper.inser(app);
	}
}
