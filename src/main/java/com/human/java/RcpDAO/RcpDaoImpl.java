package com.human.java.RcpDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.RcpVO.RcpVO;

@Repository("RcpDao")
public class RcpDaoImpl implements RcpDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertRcp(RcpVO rcpvo) {
		
		mybatis.insert("Rcp.insertUsr",rcpvo);
	}
}
