package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
public class Approval_auth {
	
	// 전자결재
	private int appro_id;
	private int appro_sort;
	private String appro_member_id;
	private String appro_mem1;
	private String appro_mem2;
	private String appro_mem3;
	private String appro_auth1;
	private String appro_auth2;
	private String appro_auth3;
	private String appro_title;
	private String appro_content;
	private String appro_filename;
	private String appro_filepath;
	private Date appro_indate;
	private Date appro_startdate;
	private Date appro_enddate;
	private Date appro_auth_date1;
	private Date appro_auth_date2;
	private Date appro_auth_date3;
	private String appro_cmt;
	private String apro_status;
	
	// 승인반려
	private int apv_num;
	private String apv_auth_id;
	private String apv_auth_name;
	private Date apv_time;

	// 회원
	private String member_id;
	// 사원 연차여부 사원 연차여부
	private int member_vacation;
	// 직원 휴가 개수
	private int member_vacation_num;
	// 직원 휴가 시작일
	private String member_stratdate;
	// 직원 휴가 종료일
	private String member_enddate;
	// 직원 휴가 일
	private int member_num;
	
	// 지출 번호
	private int pay_id;
	// 지출일
	private String pay_date;
	// 지출명
	private String pay_title;
	// 지출금액
	private String pay_cash;
}
