package com.human.java.UsrDAO;

import com.human.java.UsrVO.UsrVO;

public interface MpgMainDao {

	public UsrVO mpglogincheck(UsrVO mpgvo);
	
	public String resignuser(UsrVO mpgvo);
}
