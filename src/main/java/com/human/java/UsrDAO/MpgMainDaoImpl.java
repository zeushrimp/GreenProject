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

	@Override
	public void resignuser(UsrVO mpgvo) {
		sqlSession.update("Mpg.Mpg_resign_user", mpgvo);

	}

	@Override
	public void modifyfpw(UsrVO mpgvo) {
		sqlSession.update("Mpg.Mpg_pw_modify", mpgvo);

	}

}
