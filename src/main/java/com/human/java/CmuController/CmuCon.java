package com.human.java.CmuController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.CmuService.CmuSer;
import com.human.java.CmuVO.CmuVO;

@Controller
@RequestMapping("/cmu")
public class CmuCon {
	@Autowired
	private CmuSer CmuSer;
	
	
	//단순 페이지 이동
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/cmu/"+url;
	}
	
	//유저인지 아닌지 확인
	@RequestMapping("cum_check.do")
	public String cmu_check(HttpSession session){
		
		 // 또는 관리자 or 회원 아니면 로그인 창
		 if(session.getAttribute("usr_Id")==null) {
		 return "redirect:/usr/VgUsrlogin.do";
		 } return "redirect:/cmu/VgCmuRegst.do";

	}
	
	// 커뮤니티 글 작성
	@RequestMapping("cmu_write.do")
	public String cmu_write(CmuVO cmuvo, HttpSession session){
		// 여기서 서비스 호출
		// 세션에서 아이디만 가져오기
		cmuvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		// 여기서 vo 값 확인 (컬럼 데이터)
		System.out.println(cmuvo);
		CmuSer.cmu_write(cmuvo);
		
		return "redirect:/cmu/VgCmuList.do";
	}

}
