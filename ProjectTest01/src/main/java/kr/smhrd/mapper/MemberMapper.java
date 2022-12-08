package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Member;

@Repository
@Mapper
public interface MemberMapper {

	//회원 정보수정 메서드
	public void upd(Member mem);
	
	//비밀번호 수정 메서드
	public void pupd(Member mem);
	
	public Member profile(int member_id);
}
