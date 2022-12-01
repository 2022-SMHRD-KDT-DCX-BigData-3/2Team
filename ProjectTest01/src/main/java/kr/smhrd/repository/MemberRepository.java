package kr.smhrd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import kr.smhrd.entity.Member;



@Repository
public interface MemberRepository extends JpaRepository<Member, Long> {
	@Query("select u from Member u Where u.MEMBER_id=:MEMBER_ID and u.MEMBER_PW=:MEMBER_PW")
	public Member login(@Param("MEMBER_ID") int MEMBER_ID, @Param("MEMBER_PW") String MEMBER_PW);
}
