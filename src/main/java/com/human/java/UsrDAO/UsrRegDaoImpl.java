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
	public int checkId(UsrVO usrvo) {
	
		return mybatis.selectOne("Usr.checkId",usrvo);
	}

	@Override
	public UsrVO Usr_Login(UsrVO usrvo) {
		// TODO Auto-generated method stub
		System.out.println("test");
		return mybatis.selectOne("Usr.UsrLogin",usrvo);
	}

	@Override
	public void insertUsr(UsrVO usrvo) {
		
		
		mybatis.insert("Usr.insertUsr",usrvo);
		
	}

	@Override
	public String FindId(UsrVO usrvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Usr.FindId",usrvo);
	}

	@Override
	public String FindPw(UsrVO usrvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Usr.FindPw",usrvo);
	}

	@Override
	public int checkNick(UsrVO usrvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Usr.checkNick",usrvo);
	}
	

}
