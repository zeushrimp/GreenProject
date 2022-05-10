package com.human.java.RcpService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.RcpDAO.RcpDao;
import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

@Service("RcpSer")
public class RcpSerImpl implements RcpSer{
	
	@Autowired
	private RcpDao rcpdao;
	
	// 레시피 등록
	@Override
	public void insertRcp(RcpVO rcpvo) {

		rcpdao.insertRcp(rcpvo);
	}

	@Override
	public void insertRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.insertRcp_cont(rcpvo);
	}

	@Override
	public void insertRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.insertRcp_reso(rcpvo);
	}
	// 레시피 등록 끝
	
	// 게시물 총 갯수 , 검색
	@Override
	public int countRcp(String search_text) {
		// TODO Auto-generated method stub
		return rcpdao.countRcp(search_text);
	}
	// 게시물 총 갯수 , 검색 끝
	
	// 페이징 처리 게시글 조회
	@Override
	public List<RcpVO> selectRcp(RcpListVO rcplistvo) {
//		System.out.println("안녕 Ser2");
		return rcpdao.selectRcp(rcplistvo);
	}
	// 페이징 처리 게시글 조회 끝

	// pk 등록
	@Override
	public int getPK() {
		// TODO Auto-generated method stub
		return rcpdao.getPK();
	}
	// pk 등록 끝
	
	// 레시피 상세조회
	@Override
	public RcpVO detailRcp(RcpVO rcpvo) {
//		System.out.println("안녕 Ser2");
//		System.out.println(rcpdao.detailRcp(rcpvo));
		return rcpdao.detailRcp(rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo) {
//		System.out.println("안녕 Ser2");
		return rcpdao.detailRcp_reso(rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return rcpdao.detailRcp_cont(rcpvo);
	}
	
	@Override
	public RcpVO detail_rcp_img(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return rcpdao.detail_rcp_img(rcpvo);
	}
	// 레시피 상세조회
	
	// 레시피 삭제
	@Override
	public void delcheck(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println("안녕 Ser2");
		rcpdao.delcheck(rcpvo);
	}
	
	@Override
	public void delcheck_CONT(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.delcheck_CONT(rcpvo);
	}
	
	@Override
	public void delcheck_RESO(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.delcheck_RESO(rcpvo);
	}

	@Override
	public void delcheck_img(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.delcheck_img(rcpvo);
	}
	// 레시피 삭제 끝

	// 레시피 수정
	@Override
	public void rewriteRcp(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println(rcpvo);
		rcpdao.rewriteRcp(rcpvo);
	}

	@Override
	public void rewriteRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println(rcpvo);
		rcpdao.rewriteRcp_cont(rcpvo);
	}

	@Override
	public void rewriteRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println(rcpvo);
		rcpdao.rewriteRcp_reso(rcpvo);
	}
	
	@Override
	public void rewrite_rcp_img(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		
	}
	// 레시피 수정 끝
	
	// 레시피 조회수
	@Override
	public void viewsCountRcp(int RCP_HIT) {
		// TODO Auto-generated method stub
		rcpdao.viewsCountRcp(RCP_HIT);
	}
	// 레시피 조회수 끝
	
	// 레시피 스크랩
	@Override
	public void input_scrap(RcpVO rcpvo) {
		rcpdao.input_scrap(rcpvo);
		
	}

	@Override
	public RcpVO ch_scrap_detail(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return rcpdao.ch_scrap_detail(rcpvo);
	}

	@Override
	public void cancel_scrap(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.cancel_scrap(rcpvo);
	}
	// 레시피 스크랩 끝
	
	
}
