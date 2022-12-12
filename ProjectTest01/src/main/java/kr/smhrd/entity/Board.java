package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

// 게시물 1개 (Object) => 번호, 제목, 내용, 작성자, 조회수/
@Data
public class Board {
	
	private int b_seq;
	// 추가
	private String b_title;
	private String b_content;
	private Date b_date;
	private int member_id; // 회원 아이디
	private int b_cnt;
	private String member_name;
}

