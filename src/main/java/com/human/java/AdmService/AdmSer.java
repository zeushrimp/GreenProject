package com.human.java.AdmService;

import java.util.List;

import com.human.java.UsrVO.UsrVO;

public interface AdmSer {
	// 회원 목록 불러오기 (관리자)
	public List<UsrVO> showAllusr();
	// 회원 정보 수정 (관리자)
	public void changeUsrInfo(UsrVO usrvo);
	// 회원 삭제 (관리자)
	public void delete_usr_info(UsrVO usrvo);

}
