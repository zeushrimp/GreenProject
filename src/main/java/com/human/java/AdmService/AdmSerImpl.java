package com.human.java.AdmService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.AdmDAO.AdmDao;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

@Service("AdmSer")
public class AdmSerImpl implements AdmSer{
	
	@Autowired
	private AdmDao admdao;

	// 회원 목록 리스트
	@Override
	public List<UsrVO> select_userinfo_ad_ajax(UsrVO usrvo) {
		return admdao.select_userinfo_ad_ajax();
	}

	// 레시피 목록 리스트 ajax (관리자)
	@Override
	public List<RcpVO> select_rcp_list_ad_ajax() {
		return admdao.select_rcp_list_ad_ajax();
	}


	// 커뮤니티 게시글 리스트 ajax (관리자)
	@Override
	public List<CmuVO> select_cmu_list_ad_ajax() {
		return admdao.select_cmu_list_ad_ajax();
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
