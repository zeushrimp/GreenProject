package com.human.java.AdmDAO;

import java.util.List;
import com.human.java.UsrVO.UsrVO;

public interface AdmDao {
	// 회원 목록 리스트
	public List<UsrVO> showAllusr();
	// 회원 정보 수정
	public void changeUsrInfo(UsrVO usrvo);
	// 회원 정보 삭제
	public void delete_usr_info(UsrVO usrvo);
	
}
