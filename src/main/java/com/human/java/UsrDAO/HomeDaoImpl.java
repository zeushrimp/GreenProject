package com.human.java.UsrDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.human.java.CmuVO.CmuVO;

public class HomeDaoImpl implements HomeDao{
	
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<CmuVO> newcmu() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Cmu.maincmu");
	}
	
	
}
