package com.human.java.CmuVO;

import java.sql.Date;

import lombok.Data;

@Data
public class CmureplVO {
	
	private  int  CMU_PK; // 게시글 번호
	private  String USR_ID; // 댓글 작성자
	private  int CCM_PK; // 댓글 번호
	private  String CCM_CONTENT; // 댓글 내용
	private  Date CCM_REG; // 작성 날짜
	private  int CCM_REF; // 댓글 부모 필드
	private  int  CCM_REF_STEP; // 댓글 순서
	private  int  CCM_REF_LEVEL; // 댓글 깊이
	private  int  CCM_DEL; // 댓글 삭제 여부
}
