package com.human.java.RcpDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("RcpDao")
public class RcpDaoImpl implements RcpDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;
}
