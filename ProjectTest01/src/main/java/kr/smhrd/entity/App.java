package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
public class App {
	
	private int apro_status0;
	private int apro_status1;
	private int apro_status2;
	private int apro_statusmy;
	private int apro_statusm;
	private int myc_count;
	private int b_statusc;
	
	// 일정 번호 
    private int CALENDAR_ID;
    // 일정 종류 번호 
    private int CAL_SORT_ID;
    // 일정 사원 번호 
    private int MEMBER_ID;
    // 일정 시작일 
    private String CALENDAR_START;
    // 일정 마감일 
    private String CALENDAR_END;
    // 일정 제목 
    private String CALENDAR_TITLE;
    // 일정 내용 
    private String CALENDAR_CONTENT;
    // 일정 색상분류 
    private String CALENDAR_COLOR;
    // 종일 설정 
    private String CALENDAR_ALLDAY;
    // 일정 입력일 
    private String CALENDAR_INDATE;
    // 일정 종류 구분 
    private String CAL_SORT_NAME;
    // 일정 종류 색상 
    private String CAL_SORT_COLOR;
    private String CALENDAR_CATE_SELF;
}
