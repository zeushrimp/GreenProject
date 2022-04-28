package com.human.java.RcpDAO;

import java.util.List;

import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

public interface RcpDao {

	void insertRcp(RcpVO rcpvo);

	public int countRcp();

	public List<RcpVO> selectRcp(RcpListVO rcplistvo);

	public int getPK();
	
	public RcpVO detailRcp(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo);
	
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_cont(RcpVO rcpvo);
	
	public void insertRcp_reso(RcpVO rcpvo);
}
	