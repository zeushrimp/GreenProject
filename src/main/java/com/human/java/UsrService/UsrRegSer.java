package com.human.java.UsrService;

import com.human.java.UsrVO.UsrVO;


public interface UsrRegSer {
	
	public int checkId(UsrVO usrvo);
	
	public UsrVO Usr_Login(UsrVO usrvo);
	public void insertUsr(UsrVO usrvo);
}
