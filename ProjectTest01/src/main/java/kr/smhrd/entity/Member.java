package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity

// 사원정보 사원정보
public class Member {

// 사원 번호 사원 번호
@Id
private int MEMBER_id;

// 사원 비밀번호 사원 비밀번호
private String MEMBER_PW;
// 사원 이름 사원 이름
private String MEMBER_NAME;
// 사원 생일 사원 생일
private String MEMBER_BIRTH;
// 사원 주소 사원 주소
private String MEMBER_ADDRESS;
// 사원 전화번호 사원 전화번호
private String MEMBER_PHONE;
// 부서 코드 부서 코드
private String DEPART_CODE;
// 직급 코드 직급 코드
private int RANK_CODE;
// 사원 입사일 사원 입사일
private Date MEMBER_INDATE;
// 사원 성별 사원 성별
private String MEMBER_GENDER;
// 사원 이미지 사원 이미지
private String MEMBER_IMG;
// 사원 상태 사원 상태
private int MEMBER_STATUS;
// 사원 연차여부 사원 연차여부
private int MEMBER_VACATION;
// 최종 수정일 최종 수정일
private Date MEMBER_MODIDATE;
// 직원 휴가 개수
private int MEMBER_VACATION_NUM;
// 직원 휴가 시작일
private String MEMBER_STRATDATE;
// 직원 휴가 종료일
private String MEMBER_ENDDATE;
// 직원 휴가일
private int MEMBER_NUM;
}

