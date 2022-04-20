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

	@RequestMapping("VgMpgMain.do")
	public String login_check(UsrVO mpgvo, HttpSession session, Model model) {
		session.setAttribute("usr_Id", "test01");
		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		// session은 오브젝트로 받아오기 때문에 적절한 타입에 담아주는 과정 필요.
		UsrVO alldata = MpgMainSer.mpglogincheck(mpgvo);
		String name = alldata.getUSR_NAME();
	    String pwhide = "*".repeat(alldata.getUSR_PW().length());
	    

		System.out.println(alldata);
		model.addAttribute("mpgdata",alldata);
		model.addAttribute("pwhide", pwhide);
		if (name != null) { // 로그인상태일경우

			return "/mpg/VgMpgMain";

		} else {
			return "redirect:/url/VgUsrLogin.do";
		}
	}

}