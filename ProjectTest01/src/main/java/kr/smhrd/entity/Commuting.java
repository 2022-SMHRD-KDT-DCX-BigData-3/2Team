package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
public class Commuting {
	
	// 근태관리
	private int g_seq;
	private int member_id;
	private Date g_arrive;
	private Date g_leave;
	private String g_status;
	
	// 회원정보
	private String depart_code;
	private int rank_code;
	private String member_name;
	private String member_status;
	private String member_vacation;
}
