package com.human.java.AdmDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.UsrVO.UsrVO;

@Repository("AdmDao")
public class AdmDaoImpl implements AdmDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 회원 목록 보기 (관리자)
	@Override
	public List<UsrVO> showAllusr() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Adm.showAllus");
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
