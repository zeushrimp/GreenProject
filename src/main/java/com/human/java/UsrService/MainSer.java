package com.human.java.UsrService;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;

public interface MainSer {
	
	public List<CmuVO> showMainCmu();
	public List<RcpVO> MshowNewRcp();
	public List<RcpVO> MshowPopRcp();
}
