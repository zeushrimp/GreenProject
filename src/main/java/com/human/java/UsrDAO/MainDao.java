package com.human.java.UsrDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;

public interface MainDao {

	public List<CmuVO> showMainCmu();
	public List<RcpVO> MshowNewRcp();
	public List<RcpVO> MshowPopRcp();
}
