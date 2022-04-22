package com.human.java.CmuVO;

import java.sql.Date;

import lombok.Data;

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
	public int getCMU_PK() {
		return CMU_PK;
	}
	public void setCMU_PK(int cMU_PK) {
		CMU_PK = cMU_PK;
	}
	public String getCMU_CATE() {
		return CMU_CATE;
	}
	public void setCMU_CATE(String cMU_CATE) {
		CMU_CATE = cMU_CATE;
	}
	public String getCMU_TITLE() {
		return CMU_TITLE;
	}
	public void setCMU_TITLE(String cMU_TITLE) {
		CMU_TITLE = cMU_TITLE;
	}
	public String getCMU_CONTENT() {
		return CMU_CONTENT;
	}
	public void setCMU_CONTENT(String cMU_CONTENT) {
		CMU_CONTENT = cMU_CONTENT;
	}
	public Date getCMU_REG() {
		return CMU_REG;
	}
	public void setCMU_REG(Date cMU_REG) {
		CMU_REG = cMU_REG;
	}
	public int getCMU_HIT() {
		return CMU_HIT;
	}
	public void setCMU_HIT(int cMU_HIT) {
		CMU_HIT = cMU_HIT;
	}
	public int getCMU_Like() {
		return CMU_Like;
	}
	public void setCMU_Like(int cMU_Like) {
		CMU_Like = cMU_Like;
	}
	public int getCMU_COM() {
		return CMU_COM;
	}
	public void setCMU_COM(int cMU_COM) {
		CMU_COM = cMU_COM;
	}
	public String getUSR_ID() {
		return USR_ID;
	}
	public void setUSR_ID(String uSR_ID) {
		USR_ID = uSR_ID;
	}

	
}
