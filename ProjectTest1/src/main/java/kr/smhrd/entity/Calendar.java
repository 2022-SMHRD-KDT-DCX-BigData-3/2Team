package kr.smhrd.entity;
import java.sql.Date;
import lombok.Data;
@Data
public class Calendar {

    // 일정 번호 일정 번호
    private int CALENDAR_ID;

    // 일정 종류 번호 일정 종류 번호
    private int CAL_SORT_ID;

    // 일정 사원 번호 일정 사원 번호
    private int MEMBER_ID;

    // 일정 시작일 일정 시작일
    private Date start;

    // 일정 마감일 일정 마감일
    private Date end;

    // 일정 제목 일정 제목
    private String title;

    // 일정 내용 일정 내용
    private String content;
    
    private String writer;

    // 일정 색상분류 일정 색상분류
    private String backgroundColor;

    // 종일 설정 종일 설정
    private boolean allday;
    
    private String textColor;
    
    private String borderColor;

    // 일정 입력일 일정 입력일
    private Date CALENDAR_INDATE;

    // 일정 종류 구분 일정 종류 구분
    private String CAL_SORT_NAME;

    // 일정 종류 색상 일정 종류 색상
    private String CAL_SORT_COLOR;

   
}

