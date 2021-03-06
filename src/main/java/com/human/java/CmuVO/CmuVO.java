package com.human.java.CmuVO;

import java.sql.Date;

import lombok.Data;

@Data
public class CmuVO extends Pagination {

	private  int CMU_PK; // 게시글 번호
	private  String CMU_CATE;
	private  String CMU_TITLE;
	private  String CMU_CONTENT;
	private  Date CMU_REG;
	private  int CMU_HIT; // 조회수
	private  int CMU_LIKE; // 좋아요수
	private  int CMU_COM; // 댓글수
	private  String USR_ID; // 게시글&댓글 작성자
	
	private  int CCM_PK; // 댓글 번호
	private  String CCM_CONTENT; // 댓글 내용
	private  Date CCM_REG; // 작성 날짜
	private  int CCM_REF; // 댓글 부모 필드
	private  int  CCM_REF_STEP; // 댓글 순서
	private  int  CCM_REF_LEVEL; // 댓글 깊이
	private  int  CCM_DEL; // 댓글 삭제 여부
	
	private String searchtype;
	private String keyword;	
	
	private String user_id_session; // 세션에 담긴 user_id (신고기능 관련)
	private int CMU_REPORT; // 게시글에 대한 신고 숫자
	private String cmu_report_reason; // 신고하는 이유 (사용자 입력값) 
	
	
}

