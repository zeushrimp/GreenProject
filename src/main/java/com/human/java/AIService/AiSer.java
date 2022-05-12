package com.human.java.AIService;

import java.util.List;

import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;



public interface AiSer {
	
	public List<RcpVO>Ai_recipe(RcpVO rcpvo);
	
	public String countrcp();
	
	//	변수를 사진...사진을 줘야 됨 (request?)
	public String upload_pic();
	
}
