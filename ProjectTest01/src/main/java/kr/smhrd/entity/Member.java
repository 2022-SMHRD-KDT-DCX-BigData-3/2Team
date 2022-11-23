package kr.smhrd.entity;

import lombok.Data;

// 회원(Object) -> 아이디, 비번, 이름,,,,,,
@Data
public class Member {
	private String memId; // mem_id
	private String memPwd;
	private String memName;
}
