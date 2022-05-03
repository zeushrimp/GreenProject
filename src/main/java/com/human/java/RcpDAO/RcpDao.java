package com.human.java.RcpDAO;

import java.util.List;

import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

public interface RcpDao {

	public void insertRcp(RcpVO rcpvo);

	public int countRcp();

	public List<RcpVO> selectRcp(RcpListVO rcplistvo);

	public int getPK();
	
	public RcpVO detailRcp(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_reso(RcpVO rcpvo);
	
	public void delcheck(RcpVO rcpvo);
	
	public void delcheck_CONT(RcpVO rcpvo);
	
	public void delcheck_RESO(RcpVO rcpvo);
	
	public void rewriteRcp(RcpVO rcpvo);
	
	public void rewriteRcp_cont(RcpVO rcpvo);
	
	public void rewriteRcp_reso(RcpVO rcpvo);
	
	public void viewsCountRcp(int RCP_HIT);
	
	public void input_scrap(RcpVO rcpvo);
	
	public RcpVO ch_scrap_detail(RcpVO rcpvo);
	
	public void cancel_scrap(RcpVO rcpvo);
	
}
	