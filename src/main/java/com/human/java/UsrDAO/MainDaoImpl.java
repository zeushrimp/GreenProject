package com.human.java.UsrDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;

@Repository("MainDao")
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<CmuVO> showMainCmu() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Main.showMainCmu");
	}

	@Override
	public List<RcpVO> MshowNewRcp() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Main.MshowNewRcp");
	}

	@Override
	public List<RcpVO> MshowPopRcp() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Main.MshowPopRcp");
	}
	
	
}
