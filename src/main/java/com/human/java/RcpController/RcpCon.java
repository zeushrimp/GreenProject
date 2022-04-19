package com.human.java.RcpController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.RcpService.RcpSer;

@Controller
@RequestMapping("/rcp")
public class RcpCon {
	@Autowired
	private RcpSer RcpSer;
	
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/rcp/"+url;
	}
}
