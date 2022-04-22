package com.human.java.CmuVO;

import java.sql.Date;

import lombok.Data;

@Data
public class CmuVO{

	int CMU_PK;
	String CMU_CATE;
	String CMU_TITLE;
	String CMU_CONTENT;
	Date CMU_REG;
	int CMU_HIT; // 조회수
	int CMU_Like; // 좋아요수
	int CMU_COM; // 댓글수
	String USR_ID;

	
}
