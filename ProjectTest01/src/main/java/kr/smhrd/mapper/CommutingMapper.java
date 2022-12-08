package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.AllMember;
import kr.smhrd.entity.Commuting;
import kr.smhrd.entity.Member;

@Repository
@Mapper
public interface CommutingMapper {

	// 전체 리스트 가져오기 메서드
	public List<Commuting> getcomm();
	
	// 출근
	public void scomm(Commuting comm);

	// 퇴근
	public void ecomm(Commuting comm);

	// 출근 확인
	public void rcomm(Commuting comm);
	
	// 퇴근 확인
	public void lcomm(Commuting comm);
	
	public List<AllMember> getall();

	public void del(int member_id);
}
