package com.human.java.UsrController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.UsrService.MpgMainSer;
import com.human.java.UsrService.UsrRegSer;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/mpg")
public class MpgMainCon {

	@Autowired
	private MpgMainSer MpgMainSer;
	@Autowired
	private UsrRegSer UsrRegSer;

	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/mpg/" + url;

	}

	@RequestMapping("Mpglogin_check.do")
	public ModelAndView login_check(@ModelAttribute UsrVO vo, HttpSession session) {
	session.setAttribute("USR_ID", "test01");
		
	 String name = MpgMainSer.mpglogincheck(vo, session);  
	 ModelAndView mav = new ModelAndView();
	  if (name != null) { // 로그인상태일경우
	   mav.setViewName("VgMpgMain"); // 뷰의 이름
	   } else { // 로그인 상태가 아닐경우
	     mav.setViewName("VgUsrLogin");
	     }
	     return mav;
	   }

}