package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.Commuting;
import kr.smhrd.mapper.CommutingMapper;

@Service
public class CommutingService {
	
	@Autowired
	private CommutingMapper commutingMapper;
	
	// 전체 리스트를 가져오는 메서드
	public List<Commuting> getcomm(){
		List<Commuting> comm = commutingMapper.getcomm();
		return comm;
	}
	
	// 출근
	public void scomm(Commuting comm) {
		System.out.println(comm.getMember_id());
		commutingMapper.scomm(comm);
		commutingMapper.rcomm(comm);
	}

	// 퇴근
	public void ecomm(Commuting comm) {
		System.out.println(comm.getMember_id());
		commutingMapper.ecomm(comm);
		commutingMapper.lcomm(comm);
	}
}
