package com.human.java.AIService;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.human.java.RcpVO.RcpVO;




public interface AiSer {
	
	public List<RcpVO>Ai_recipe(RcpVO rcpvo);
	
	public String countrcp();
	
	// 사진 업로드
	public Boolean store_image(MultipartFile file) throws Exception;
	
	//	변수를 사진...사진을 줘야 됨 (request?)
	public String upload_pic(MultipartFile file);
	
}
