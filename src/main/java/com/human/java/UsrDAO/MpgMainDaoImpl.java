package com.human.java.UsrDAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
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

	@Override
	public void modifyfnk(UsrVO mpgvo) {
		sqlSession.update("Mpg.Mpg_nk_modify", mpgvo);
		
	}

	@Override
	public void modifyvg(UsrVO mpgvo) {
		sqlSession.update("Mpg.Mpg_vg_modify", mpgvo);
		
	}

	@Override
	public List<CmuVO> mpg_myposts(UsrVO mpgvo) {
		return sqlSession.selectList("Mpg.Mpg_Myposts",mpgvo);

	}

	@Override
	public List<RcpVO> mpg_myrecipes(UsrVO mpgvo) {
		return sqlSession.selectList("Mpg.Mpg_Myrecipes",mpgvo);
	}

	@Override
	public void mpg_saveimg(UsrVO mpgvo) {
		sqlSession.update("Mpg.Mpg_saveimg",mpgvo);
		
	}

	@Override
	public List<RcpVO> scrapnum(UsrVO mpgvo) {
		System.out.println("11");
		return sqlSession.selectList("Mpg.scrapnum",mpgvo);
		
	}

	@Override
	public List<RcpVO> get_mpgscrcp(List<RcpVO> scrapnum) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Mpg.get_mpgscrcp",scrapnum);
	}

	@Override
	public void updatechatid(UsrVO mpgvo) {
		// TODO Auto-generated method stub
		sqlSession.update("Mpg.updatechatid",mpgvo);
		
	}

	
	
	

}
