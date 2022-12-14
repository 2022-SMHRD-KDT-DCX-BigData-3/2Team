package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
public class Message {
	
	private int member_id;
	private String m_title;
	private String m_content;
	private String m_file;
	private String m_sender;
	private String m_receiver;
	private Date m_date;
	private int m_status;
	private int m_seq;
}
