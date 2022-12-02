package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
public class UpApproval {
	
	private int appro_id;
	private String appro_auth1;
	private String appro_auth2;
	private String appro_auth3;
}
