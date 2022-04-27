package com.human.java.AdmService;

import java.util.List;

import com.human.java.UsrVO.UsrVO;

public interface AdmSer {
	public List<UsrVO> showAllusr();
	public void changeUsrInfo(UsrVO usrvo);

}
