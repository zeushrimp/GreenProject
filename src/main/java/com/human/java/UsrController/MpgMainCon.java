package com.human.java.UsrController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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

	// 로그인 상태 유무로 마이페이지 or 로그인 페이지로 들어가는 컨트롤러
	@RequestMapping("VgMpgMain.do")
	public String login_check(UsrVO mpgvo, HttpSession session, Model model) {
		session.setAttribute("usr_Id", "test01");
		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		// session은 오브젝트로 받아오기 때문에 적절한 타입에 담아주는 과정 필요.
		UsrVO alldata = MpgMainSer.mpglogincheck(mpgvo);
		String name = alldata.getUSR_NAME();
		String pwhide = "*".repeat(alldata.getUSR_PW().length());
		model.addAttribute("mpgdata", alldata);
		model.addAttribute("pwhide", pwhide);
		if (name != null) { // 로그인상태일경우

			return "/mpg/VgMpgMain";

		} else {
			return "redirect:/usr/VgUsrLogin.do";
		}
	}
	/**
	 * 회 변경 컨트롤러
	 * @mapping VgMpgMainRsn.do
	 * @param mpgvo
	 * @param session
	 * @return "VgUsrLogin.do"
	 * @author 신재우
	 */
	
	@RequestMapping("VgMpgMainRsn.do")
	public String resignuser(UsrVO mpgvo, HttpSession session) {
		session.setAttribute("usr_Id", "test01");
		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		MpgMainSer.resignuser(mpgvo);
		
		
		return "redirect:/usr/VgUsrLogin.do";
		
	}
	
	/**
	 * 비밀번호 변경 컨트롤러
	 * @mapping modifypw.do
	 * @param mpgvo
	 * @param session
	 * @return "VgUsrLogin.do"
	 * @author 신재우
	 * 
	 */

		@RequestMapping("modifypw.do")
		public String modifypw(UsrVO mpgvo, HttpSession session) {
			
			
			
			
			session.setAttribute("usr_Id", "test01");
			mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
			MpgMainSer.modifyfpw(mpgvo);
			
			
			return "redirect:/usr/VgUsrLogin.do";
			
		}
	
	

}