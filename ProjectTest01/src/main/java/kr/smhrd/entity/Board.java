package kr.smhrd.entity;

import lombok.Data;

// 게시물 1개 (Object) => 번호, 제목, 내용, 작성자, 조회수/
@Data
public class Board {
	private int idx;
	// 추가
	private String memId; // 회원 아이디
	private String title;
	private String content;
	private String writer;
	private String indate;
	private int count;
}
