package com.human.java.RcpService;

import java.util.List;


import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

public interface RcpSer {

	public void insertRcp(RcpVO rcpvo);
	
	public int getPK();
	
	// 게시물 총 갯수
	public int countRcp();
	
	// 페이징 처리 게시글 조회
	public List<RcpVO> selectRcp(RcpListVO rcplistvo);
	
	public RcpVO detailRcp(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_reso(RcpVO rcpvo);
}


