package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.App;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.Message;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;
import kr.smhrd.mapper.ApprovalMapper;
import kr.smhrd.mapper.MessageMapper;

@Service
public class MessageService {
	
	@Autowired
	private MessageMapper messageMapper;
	
	public List<Message> message(int member_id) {
		List<Message> mess = messageMapper.message(member_id);
		return mess;
	}
	
	public Message messview(int m_seq) {
		Message mess = messageMapper.messview(m_seq);
		return mess;
	}
	
}

