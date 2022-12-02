package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Member;

@Repository
@Mapper
public interface MemberMapper {

	//회원 정보수정 메서드
	public void memmodify(Member mem);
	
}
