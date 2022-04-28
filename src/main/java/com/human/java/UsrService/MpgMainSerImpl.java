package com.human.java.UsrService;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrDAO.MpgMainDao;
import com.human.java.UsrVO.UsrVO;

@Service("MpgMainSer")
public class MpgMainSerImpl implements MpgMainSer {

	@Inject
	MpgMainDao mpgmaindao;

	@Override
	public UsrVO mpglogincheck(UsrVO mpgvo) {
		UsrVO alldata = mpgmaindao.mpglogincheck(mpgvo);
		return alldata;
	}

	@Override
	public void resignuser(UsrVO mpgvo) {
		mpgmaindao.resignuser(mpgvo);

	}

	@Override
	public void modifyfpw(UsrVO mpgvo) {
		mpgmaindao.modifyfpw(mpgvo);
	}

	@Override
	public void modifynk(UsrVO mpgvo) {
		mpgmaindao.modifyfnk(mpgvo);
		
	}

	@Override
	public void modifyvg(UsrVO mpgvo) {
		mpgmaindao.modifyvg(mpgvo);
		
	}

	@Override
	public List<CmuVO> mpg_myposts(UsrVO mpgvo) {

		return mpgmaindao.mpg_myposts(mpgvo);
	}

	@Override
	public List<RcpVO> mpg_myrecipes(UsrVO mpgvo) {
		// TODO Auto-generated method stub
		return mpgmaindao.mpg_myrecipes(mpgvo);
	}

	@Override
	public void mpg_saveimg(UsrVO mpgvo) {
		mpgmaindao.mpg_saveimg(mpgvo);
		
	}





}
