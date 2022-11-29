package kr.smhrd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.Member;
import kr.smhrd.repository.MemberRepository;



@Service
public class MemberService {

@Autowired
MemberRepository memberRepository;
public void getJoin(Member vo) {
	memberRepository.save(vo);
 }
public Member login(Member vo) {
	return memberRepository.login(vo.getMEMBER_id(), vo.getMEMBER_PW());
  }

}
