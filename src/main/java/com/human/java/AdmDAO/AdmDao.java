package com.human.java.AdmDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

public interface AdmDao {
	
	// 회원 목록 리스트
	public List<UsrVO> select_userinfo_ad_ajax();
	
	// 레시피 목록 리스트 ajax (관리자)
	public List<RcpVO> select_rcp_list_ad_ajax();
	
	// 커뮤니티 게시글 리스트 ajax (관리자)
	public List<CmuVO> select_cmu_list_ad_ajax();
	
	// 회원 정보 수정
	public void changeUsrInfo(UsrVO usrvo);
	
	// 회원 정보 삭제
	public void delete_usr_info(UsrVO usrvo);
	


	
}
