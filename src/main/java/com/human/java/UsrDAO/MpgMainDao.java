package com.human.java.UsrDAO;

import com.human.java.UsrVO.UsrVO;

public interface MpgMainDao {

	public UsrVO mpglogincheck(UsrVO mpgvo);
	
	public void resignuser(UsrVO mpgvo);

	public void modifyfpw(UsrVO mpgvo);
	
	public void modifyfnk(UsrVO mpgvo);
}
