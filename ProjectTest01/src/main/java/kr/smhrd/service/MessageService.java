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
	
	public List<Message> messlist() {
		List<Message> messlist = messageMapper.messlist();
		return messlist;
	}
	
}

