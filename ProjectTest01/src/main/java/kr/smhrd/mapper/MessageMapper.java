package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.App;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.Message;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;

@Repository
@Mapper
public interface MessageMapper {

	// 전체 쪽지 가져오기
	public List<Message> message(int member_id);
	
}

