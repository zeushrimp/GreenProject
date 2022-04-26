package com.human.java.UsrDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;

@Repository("MainDao")
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<CmuVO> showMainCmu() {
		// TODO Auto-generated method stub
		return mybatis.selectList("Main.showMainCmu");
	}
	
	
}
