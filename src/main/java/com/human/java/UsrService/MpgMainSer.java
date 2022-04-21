package com.human.java.UsrService;

import javax.servlet.http.HttpSession;

import com.human.java.UsrVO.UsrVO;

public interface MpgMainSer {
	
	public UsrVO mpglogincheck(UsrVO mpgvo);

	
	public void resignuser(UsrVO mpgvo);
	
	public void modifyfpw(UsrVO mpgvo);
	
	public void modifynk(UsrVO mpgvo);
	
	public void modifyvg(UsrVO mpgvo);
}
