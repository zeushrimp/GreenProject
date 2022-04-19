package com.human.java.CmuController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.CmuService.CmuSer;

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

}
