package com.human.java.AdmDAO;

import java.util.List;

import com.human.java.AdmVO.AdmListVO;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

public interface AdmDao {
	
	// 회원목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	public int ad_userinfo_listcnt();
	
	// 레시피 목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	public int ad_rcp_listcnt();

	// 커뮤니티 글 목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	public int ad_cmu_listcnt();
	
	// 회원 목록 불러오기 + 페이징 (관리자)
	public List<UsrVO> select_userinfo_ad_ajax(AdmListVO admlistvo);
	
	// 레시피 목록 리스트 ajax + 페이징 (관리자)
	public List<RcpVO> select_rcp_list_ad_ajax(AdmListVO admlistvo);
	
	// 커뮤니티 게시글 리스트 ajax + 페이징 (관리자)
	public List<CmuVO> select_cmu_list_ad_ajax(AdmListVO admlistvo);
	
	// 회원 정보 수정
	public void changeUsrInfo(UsrVO usrvo);
	
	// 회원 정보 삭제
	public void delete_usr_info(UsrVO usrvo);

	


	
}
