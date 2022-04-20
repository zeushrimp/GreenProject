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
	public String checkId(UsrVO usrvo) {
		int result = UsrRegSer.checkId(usrvo);
		return result+"";
	}
	
	
	@RequestMapping("/VgUsrLoginCom.do")
	public String login(UsrVO usrvo, HttpSession session) {
		UsrVO result = UsrRegSer.Usr_Login(usrvo);
		if( result == null ) {
			
			
			return "redirect:/usr/VgUsrLogin_no.do";
		} else if(result.getUSR_OUT() == 0) {
			
			return "redirect:/usr/VgUsrLogin_cant.do";
		} else {
			
			session.setAttribute("usr_id", result.getUSR_ID());
			session.setAttribute("usr_admin", result.getUSR_ADMIN());

			return "redirect:/usr/VgUsrLogin_ok.do";
			
		}
		
	}
	
@RequestMapping("VgUsrRegstDone.do")
public String insertUsr(UsrVO usrvo) {
	usrvo.setUSR_EMAIL2(usrvo.getUSR_EMAIL()+"@"+usrvo.getUSR_EMAIL1());
	System.out.println(usrvo.getUSR_EMAIL2());
	UsrRegSer.insertUsr(usrvo);
	return "redirect:/usr/VgUsrLogin.do";
}
	
}
