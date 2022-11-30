package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
public class AllApproval {
	
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
	
	// 승인반려여부
	private String apv_auth_id;
	private String apv_auth_name;
	private Date apv_time;
	private int apv_num;
	
	// 부서이름
	private String depart_name1;
	private String depart_name2;
	private String depart_name3;
	private String depart_name4;
}
