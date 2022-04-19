package com.human.java.UsrService;

import javax.servlet.http.HttpSession;

import com.human.java.UsrVO.UsrVO;

public interface MpgMainSer {
	
	public String mpglogincheck(UsrVO vo, HttpSession session);

}
