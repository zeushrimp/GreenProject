package com.human.java.AiDAO;

import java.util.List;

import com.human.java.RcpVO.RcpVO;



public interface AiDao {

	public List<RcpVO> Ai_recipe(RcpVO rcpvo);

	public String countrcp();


}
