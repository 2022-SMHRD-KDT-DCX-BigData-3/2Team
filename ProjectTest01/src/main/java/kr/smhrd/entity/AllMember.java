package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class AllMember {
	
	// 사원 번호
	private int member_id;
	// 사원 비밀번호 사원 비밀번호
	private String member_pw;
	// 사원 이름 사원 이름
	private String member_name;
	// 사원 생일 사원 생일
	private String member_birth;
	// 사원 주소 사원 주소
	private String member_address;
	// 사원 전화번호 사원 전화번호
	private String member_phone;
	// 부서 코드 부서 코드
	private String depart_code;
	// 직급 코드 직급 코드
	private int rank_code;
	// 사원 입사일 사원 입사일
	private Date member_indate;
	// 사원 성별 사원 성별
	private String member_gender;
	// 사원 이미지 사원 이미지
	private String member_img;
	// 사원 상태 사원 상태
	private int member_status;
	// 사원 연차여부 사원 연차여부
	private int member_vacation;
	// 최종 수정일 최종 수정일
	private Date member_modidate;
	// 직원 휴가 개수
	private int member_vacation_num;
	// 직원 휴가 시작일
	private String member_stratdate;
	// 직원 휴가 종료일
	private String member_enddate;
	// 직원 휴가일
	private int member_num;
	
	// 출근시간
	private Date g_arrive;
	// 퇴근시간
	private Date g_leave;
}
