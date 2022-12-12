package kr.smhrd.entity;

import java.sql.Date;

import lombok.Data;

// 회원(Object) -> 아이디, 비번, 이름,,,,,,
@Data
public class Member {
	// 사원 번호 사원 번호
    private int memberId;

    // 사원 비밀번호 사원 비밀번호
    private String memberPw;

    // 사원 이름 사원 이름
    private String memberName;

    // 사원 생일 사원 생일
    private String memberBirth;

    // 사원 주소 사원 주소
    private String memberAddress;

    // 사원 전화번호 사원 전화번호
    private String memberPhone;

    // 부서 코드 부서 코드
    private String departCode;

    // 직급 코드 직급 코드
    private int rankCode;

    // 사원 입사일 사원 입사일
    private Date memberIndate;

    // 사원 성별 사원 성별
    private String memberGender;

    // 사원 이미지 사원 이미지
    private String memberImg;

    // 사원 상태 사원 상태
    private int memberStatus;

    // 사원 연차여부 사원 연차여부
    private int memberVacation;

    // 최종 수정일 최종 수정일
    private Date memberModidate;

    public int getMemberId() {
        return memberId;
    }

	public static Object builder() {
		// TODO Auto-generated method stub
		return null;
	}
}
