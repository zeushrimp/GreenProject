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

	@Override
	public List<UsrVO> showAllusr() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Adm.showAllus");
	}

	@Override
	public void changeUsrInfo(UsrVO usrvo) {
		// TODO Auto-generated method stub
		mybatis.update("Adm.changeUsrInfo",usrvo);
	}
	
	
}
