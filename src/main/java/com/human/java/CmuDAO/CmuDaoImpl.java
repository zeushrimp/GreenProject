package com.human.java.CmuDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("CmuDao")
public class CmuDaoImpl implements CmuDao{
	@Autowired
	private SqlSessionTemplate mybatis;
	
}
