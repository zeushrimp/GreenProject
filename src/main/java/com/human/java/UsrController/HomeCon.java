package com.human.java.UsrController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrService.HomeSer;

@Controller
@RequestMapping("/home")
public class HomeCon {

	@Autowired
	private HomeSer homeser;
	
	@RequestMapping("/{url}.do")
	public String pagemove(@PathVariable String url) {

		return "/home/"+url;
	}
	
	
	@RequestMapping("VgMain.do")
	public String showmain() {
		
		homeser.newcmu();
		return "redirect:/home/VgMain.do";
	}
}
