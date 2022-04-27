package com.human.java.UsrVO;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UsrVO {
	String USR_ID;
	String USR_PW;
	String USR_NAME;
	String USR_NICK;
	String USR_TEL;
	String USR_EMAIL;
	String USR_ADDR1;
	String USR_ADDR2;
	String USR_ADDR3;
	String USR_VEGE;
	String USR_GRADE;
	int USR_POINT;
	int USR_ADMIN;
	int USR_OUT;
	String USR_EMAIL1;
	String USR_EMAIL2;
	Date USR_DATE;
	MultipartFile USR_PHOTO;
}
