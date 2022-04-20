package com.human.java.UsrDAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.java.UsrVO.UsrVO;

@Repository("MpgMainDao")
public class MpgMainDaoImpl implements MpgMainDao {

	@Inject
	SqlSession sqlSession;

	@Override
	public UsrVO mpglogincheck(UsrVO mpgvo) {
		return sqlSession.selectOne("Mpg.Mpg_login_check", mpgvo);

	}
}
