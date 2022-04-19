package com.human.java.UsrDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.UsrVO.UsrVO;

@Repository("UsrRegDao")
public class UsrRegDaoImpl implements UsrRegDao{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int checkId(UsrVO vo) {
	
	return mybatis.selectOne("Usr.checkId",vo);
}

}