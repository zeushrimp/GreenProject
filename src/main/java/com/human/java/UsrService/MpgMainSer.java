package com.human.java.UsrService;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

public interface MpgMainSer {
	
	public UsrVO mpglogincheck(UsrVO mpgvo);

	
	public void resignuser(UsrVO mpgvo);
	
	public void modifyfpw(UsrVO mpgvo);
	
	public void modifynk(UsrVO mpgvo);
	
	public void modifyvg(UsrVO mpgvo);
	
	public List<CmuVO> mpg_myposts(UsrVO mpgvo);
	
	public List<RcpVO> mpg_myrecipes(UsrVO mpgvo);
	
	public void mpg_saveimg( UsrVO mpgvo);
	
	public List<RcpVO> scrapnum(UsrVO mpgvo);
	
	public List<RcpVO> get_mpgscrcp(List<RcpVO> scrapnum);
	
	public void updatechatid(UsrVO mpgvo);
	
	public List<UsrVO> getChatList();

}
