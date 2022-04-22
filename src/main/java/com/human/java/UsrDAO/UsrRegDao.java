package com.human.java.UsrDAO;

import com.human.java.UsrVO.UsrVO;

public interface UsrRegDao {

	public int checkId(UsrVO usrvo);
	
	public UsrVO Usr_Login(UsrVO usrvo);
	public void insertUsr(UsrVO usrvo);
	public String FindId(UsrVO usrvo);
	public String FindPw(UsrVO usrvo);
}
