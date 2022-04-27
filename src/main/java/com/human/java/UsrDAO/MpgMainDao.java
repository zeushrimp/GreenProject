package com.human.java.UsrDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

public interface MpgMainDao {

	public UsrVO mpglogincheck(UsrVO mpgvo);
	
	public void resignuser(UsrVO mpgvo);

	public void modifyfpw(UsrVO mpgvo);
	
	public void modifyfnk(UsrVO mpgvo);
	
	public void modifyvg(UsrVO mpgvo);

	public List<CmuVO> mpg_myposts(UsrVO mpgvo);

	public List<RcpVO> mpg_myrecipes(UsrVO mpgvo);
}
