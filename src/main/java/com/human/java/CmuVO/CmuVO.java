package com.human.java.CmuVO;

import java.util.Date;

import lombok.Data;

@Data
public class CmuVO {

	int CMU_PK;
	String CMU_CATE;
	String CMU_TITLE;
	String CMU_CONTENT;
	Date CMU_REG;
	int CMU_HIT;
	int CMU_like;
	int CMU_COM;
	String USR_ID;

	
}
