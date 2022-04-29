package com.human.java.RcpDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

@Repository("RcpDao")
public class RcpDaoImpl implements RcpDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertRcp(RcpVO rcpvo) {
//		System.out.println("안녕 DAO");
//		System.out.println(rcpvo);
		mybatis.insert("Rcp.insertRcp",rcpvo);
		
	}

	@Override
	public int countRcp() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.countRcp");
	}

	@Override
	public List<RcpVO> selectRcp(RcpListVO rcplistvo) {
		// TODO Auto-generated method stub
//		System.out.println("안녕 Dao1");
//		System.out.println(rcplistvo);
		return mybatis.selectList("Rcp.selectRcp",rcplistvo);
	}

	@Override
	public int getPK() {
		return mybatis.selectOne("Rcp.getPK");
	}

	@Override
	public RcpVO detailRcp(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.detailRcp", rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Rcp.detailRcpTitle", rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Rcp.detailRcpCont", rcpvo);
	}

	@Override
	public void insertRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.insert("Rcp.insertCont", rcpvo);
	}

	@Override
	public void insertRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.insert("Rcp.insertResor",rcpvo);
	}

	@Override
	public String delcheck(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		System.out.println("안녕 Dao1");
		return mybatis.selectOne("Rcp.delcheck",rcpvo);
	}

	@Override
	public RcpVO rewcheck(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.rewcheck", rcpvo);
	}

	

}
