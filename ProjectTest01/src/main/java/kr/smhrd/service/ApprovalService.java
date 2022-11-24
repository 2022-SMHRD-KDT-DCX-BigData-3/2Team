package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Board;
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
	public Approval get(Long appro_id) {
		Approval app = approvalMapper.read(appro_id);
		return app;
	}
}
