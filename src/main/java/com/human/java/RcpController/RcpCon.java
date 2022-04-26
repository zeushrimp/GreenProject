package com.human.java.RcpController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.RcpService.RcpSer;
import com.human.java.RcpVO.RcpVO;

@Controller
@RequestMapping("/rcp")
public class RcpCon {
	@Autowired
	private RcpSer RcpSer;
	
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/rcp/"+url;
	}
	
	
	@RequestMapping("VgRcpRegDone.do")
	public void insertRcp(RcpVO rcpvo) {
		System.out.println("안녕");
		
		
	}
	
}
