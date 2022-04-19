package com.human.java.UsrController;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.UsrService.UsrRegSer;
import com.human.java.UsrVO.UsrVO;


@Controller
@RequestMapping("/usr")
public class UsrRegCon {
	
	@Autowired
	private UsrRegSer UsrRegSer;
	
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/usr/"+url;
	}
	@RequestMapping("/checkId.do")
	@ResponseBody
	public String checkId(UsrVO vo) {
		int result = UsrRegSer.checkId(vo);
		return result+"";
	}
	
	
	@RequestMapping("/VgUsrLoginCom.do")
	public String login(UsrVO vo, HttpSession session) {
		UsrVO result = UsrRegSer.Usr_Login(vo);
		if( result == null ) {
			
			
			return "redirect:/usr/VgUsrlogin_no.do";
		} else {
			
			session.setAttribute("usrid", result.getUSR_ID());
			

			return "redirect:/usr/VgUsrlogin_ok.do";
			
		}
		
	}
	
}
