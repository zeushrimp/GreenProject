package com.human.java.AdmDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.AdmVO.AdmListVO;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

@Repository("AdmDao")
public class AdmDaoImpl implements AdmDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 회원목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	@Override
	public int ad_userinfo_listcnt() {
		// TODO Auto-generated method stub
		
		return mybatis.selectOne("Adm.ad_userinfo_listcnt");
	}
	
	// 레시피 목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	@Override
	public int ad_rcp_listcnt() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Adm.ad_rcp_listcnt");
	}
	
	// 커뮤니티 글 목록 보기 / 총 게시물 수 매퍼 for 페이징 (관리자)
	@Override
	public int ad_cmu_listcnt() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Adm.ad_cmu_listcnt");
	}

	// 회원 목록 불러오기 + 페이징 (관리자)
	@Override
	public List<UsrVO> select_userinfo_ad_ajax(AdmListVO admlistvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Adm.select_userinfo_ad_ajax",admlistvo);
	}

	// 레시피 목록 리스트 ajax + 페이징 (관리자)
	@Override
	public List<RcpVO> select_rcp_list_ad_ajax(AdmListVO admlistvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Adm.select_rcp_list_ad_ajax",admlistvo);
	}

	
	// 커뮤니티 게시글 리스트 ajax + 페이징 (관리자)
	@Override
	public List<CmuVO> select_cmu_list_ad_ajax(AdmListVO admlistvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Adm.select_cmu_list_ad_ajax",admlistvo);
	}
	
	// 관리자 회원 정보 변경 (관리자)
	@Override
	public void changeUsrInfo(UsrVO usrvo) {
		// TODO Auto-generated method stub
		mybatis.update("Adm.changeUsrInfo",usrvo);
	}

	// 관리자 회원 삭제 (관리자)
	@Override
	public void delete_usr_info(UsrVO usrvo) {
		// TODO Auto-generated method stub
		mybatis.delete("Adm.delete_usr_info",usrvo);
		
	}



	
}
