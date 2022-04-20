package com.human.java.UsrService;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
