package com.human.java.RcpDAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

@Repository("RcpDao")
public class RcpDaoImpl implements RcpDao{
	
	@Inject
	SqlSession sqlSession;
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 레시피 등록
	@Override
	public void insertRcp(RcpVO rcpvo) {
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
	// 레시피 등록
	
	// 페이징 밎 레시피 목록
	@Override
	public int countRcp(String search_text) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.countRcp",search_text);
	}
	
	@Override
	public List<RcpVO> selectRcp(RcpListVO rcplistvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Rcp.selectRcp",rcplistvo);
	}
	// 페이징 밎 레시피 목록
	
	// RCP_PK 를 공유하지만 외래키로 받질 않아서 따로 생성
	@Override
	public int getPK() {
		return mybatis.selectOne("Rcp.getPK");
	}
	
	// 상세 레시피 조회
	@Override
	public RcpVO detailRcp(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.detailRcp", rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Rcp.detailRcp_reso", rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Rcp.detailRcp_cont", rcpvo);
	}
	
	@Override
	public RcpVO detail_rcp_img(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Rcp.detail_rcp_img", rcpvo);
	}
	// 상세 레시피 조회
	
	// 자기가 쓴 레시피삭제 
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
	public void delcheck_img(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		mybatis.delete("Rcp.delcheck_img",rcpvo);
	}
	// 자기가 쓴 레시피삭제
	
	
	@Override
	public void rewriteRcp(RcpVO rcpvo) {
		// TODO Auto-generated method stub
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

	
	// 조회수
	@Override
	public void viewsCountRcp(int RCP_HIT) {
		// TODO Auto-generated method stub
		mybatis.update("Rcp.viewsCountRcp",RCP_HIT);
	}
	// 조회수
	
	// 레시피 스크랩하기
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
	// 레시피 스크랩하기
	
}
