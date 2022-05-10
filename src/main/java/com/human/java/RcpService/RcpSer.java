package com.human.java.RcpService;

import java.util.List;


import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

public interface RcpSer {
	// 레시피 등록
	public void insertRcp(RcpVO rcpvo);
	
	public void insertRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_reso(RcpVO rcpvo);
	// 레시피 등록 끝
	
	// pk 등록
	public int getPK();
	// pk 등록 끝
	
	// 게시물 총 갯수 , 검색
	public int countRcp(String search_text);
	// 게시물 총 갯수 , 검색 끝
	
	// 페이징 처리 게시글 조회
	public List<RcpVO> selectRcp(RcpListVO rcplistvo);
	
	// 페이징 처리 게시글 조회 끝
	
	// 레시피 상세조회
	public RcpVO detailRcp(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo);
	
	public RcpVO detail_rcp_img(RcpVO rcpvo);
	// 레시피 상세조회
	
	// 레시피 삭제
	public void delcheck(RcpVO rcpvo);
	
	public void delcheck_CONT(RcpVO rcpvo);
	
	public void delcheck_RESO(RcpVO rcpvo);
	
	public void delcheck_img(RcpVO rcpvo);
	// 레시피 삭제 끝
	
	// 레시피 수정
	public void rewriteRcp(RcpVO rcpvo);
	
	public void rewriteRcp_cont(RcpVO rcpvo);
	
	public void rewriteRcp_reso(RcpVO rcpvo);
	
	public void rewrite_rcp_img(RcpVO rcpvo);
	// 레시피 수정 끝
	
	// 레시피 조회수
	public void viewsCountRcp(int RCP_HIT);
	// 레시피 조회수 끝

	// 레시피 스크랩
	public void input_scrap(RcpVO rcpvo);
	
	public RcpVO ch_scrap_detail(RcpVO rcpvo);
	
	public void cancel_scrap(RcpVO rcpvo);
	// 레시피 스크랩 끝
	
}


