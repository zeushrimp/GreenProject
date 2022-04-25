package com.human.java.CmuVO;

import java.sql.Date;

import lombok.Data;

@Data
public class CmuVO{

	private  int CMU_PK;
	private  String CMU_CATE;
	private  String CMU_TITLE;
	private  String CMU_CONTENT;
	private  Date CMU_REG;
	private  int CMU_HIT; // 조회수
	private  int CMU_Like; // 좋아요수
	private  int CMU_COM; // 댓글수
	private  String USR_ID;
	
}
