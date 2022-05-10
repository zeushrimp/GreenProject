package com.human.java.AIService;

import java.util.List;

import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;



public interface AiSer {
	
	public List<RcpVO>Ai_recipe(RcpVO rcpvo);
	
	public String countrcp();
}
