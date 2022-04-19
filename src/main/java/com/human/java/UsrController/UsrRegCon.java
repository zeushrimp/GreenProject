package com.human.java.UsrController;

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
	
}
