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
	public void insertRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.insert("Rcp.insertCont",rcpvo);
	}

	@Override
	public void insertRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.insert("Rcp.insertResor",rcpvo);
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
//		System.out.println("detailRcp_reso : "+ rcpvo);
		return mybatis.selectList("Rcp.detailRcp_reso", rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println("detailRcp_cont : "+ rcpvo);
		return mybatis.selectList("Rcp.detailRcp_cont", rcpvo);
	}

	@Override
	public void delcheck(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println("안녕 Dao1");
		mybatis.delete("Rcp.delcheck",rcpvo);	
	}
	
	@Override
	public void delcheck_CONT(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.delete("Rcp.delcheck_CONT",rcpvo);
	}
	
	@Override
	public void delcheck_RESO(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.delete("Rcp.delcheck_RESO",rcpvo);
	}

	@Override
	public void rewriteRcp(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println("rewriteRcp : "+rcpvo);
		mybatis.update("Rcp.rewriteRcp", rcpvo);
	}

	@Override
	public void rewriteRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		
		mybatis.update("Rcp.rewriteRcp_cont", rcpvo);
	}

	@Override
	public void rewriteRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		
		mybatis.update("Rcp.rewriteRcp_reso", rcpvo);
	}

	@Override
	public void viewsCountRcp(int RCP_HIT) {
		// TODO Auto-generated method stub
		mybatis.update("Rcp.viewsCountRcp",RCP_HIT);
	}

	@Override
	public void input_scrap(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		
		mybatis.insert("Rcp.input_scrap",rcpvo);
	}

	@Override
	public RcpVO ch_scrap_detail(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.ch_scrap_detail",rcpvo);
	}

	@Override
	public void cancel_scrap(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.delete("Rcp.cancel_scrap",rcpvo);
	}
	
	

}
