package com.human.java.AdmService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.AdmDAO.AdmDao;
import com.human.java.AdmVO.AdmListVO;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

@Service("AdmSer")
public class AdmSerImpl implements AdmSer{
	
	@Autowired
	private AdmDao admdao;
	
	// 회원목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	public int ad_userinfo_listcnt() {
		return admdao.ad_userinfo_listcnt();
		
	}
	
	// 레시피 목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	@Override
	public int ad_rcp_listcnt() {
		// TODO Auto-generated method stub
		return admdao.ad_rcp_listcnt();
	}

	// 커뮤니티 글 목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	@Override
	public int ad_cmu_listcnt() {
		// TODO Auto-generated method stub
		return admdao.ad_cmu_listcnt();
	}



	// 회원 목록 불러오기 + 페이징 (관리자)
	@Override
	public List<UsrVO> select_userinfo_ad_ajax(UsrVO usrvo, AdmListVO admlistvo) {
    	System.out.println("서비스 탔다");
		return admdao.select_userinfo_ad_ajax(admlistvo);
	}

	// 레시피 목록 리스트 ajax + 페이징 (관리자)
	@Override
	public List<RcpVO> select_rcp_list_ad_ajax(AdmListVO admlistvo) {
		return admdao.select_rcp_list_ad_ajax(admlistvo);
	}


	// 커뮤니티 게시글 리스트 ajax + 페이징 (관리자)
	@Override
	public List<CmuVO> select_cmu_list_ad_ajax(AdmListVO admlistvo) {
		return admdao.select_cmu_list_ad_ajax(admlistvo);
	}
	
	
	@Override
	public void changeUsrInfo(UsrVO usrvo) {
		admdao.changeUsrInfo(usrvo);
		
	}

	// 회원 정보 삭제
	@Override
	public void delete_usr_info(UsrVO usrvo) {
		admdao.delete_usr_info(usrvo);
		
	}


	
}
