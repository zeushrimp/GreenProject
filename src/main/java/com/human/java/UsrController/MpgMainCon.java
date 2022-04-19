package com.human.java.UsrController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.UsrService.MpgMainSer;

@Controller
@RequestMapping("/mpg")
public class MpgMainCon {

	@Autowired
	private MpgMainSer MpgMainSer;

	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/usr/" + url;

	}
}
