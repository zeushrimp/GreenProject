package com.human.java.RcpController;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.RcpService.RcpSer;
import com.human.java.RcpVO.RcpListVO;
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
	
	@RequestMapping("VgRcpRegst_ck.do")
	public String regstRcp(HttpSession session) {
		if (session.getAttribute("usr_id") == null) { // 합칠때 usr_Id 로 변경
			return "redirect:/usr/VgUsrLogin.do";
		}else {
		return "redirect:/rcp/VgRcpRegst.do";
		}
	}	
	
	
	@RequestMapping("VgRcpRegDone.do")
	public String insertRcp(RcpVO rcpvo, HttpSession session) {
//		System.out.println("안녕");
//		System.out.println(rcpvo.getRCP_PK());
		System.out.println(rcpvo);
		int i=RcpSer.getPK();
		rcpvo.setRCP_PK(i);
		RcpSer.insertRcp(rcpvo);
	
		return "redirect:/rcp/VgRcpList.do";
	}
	
	@RequestMapping("VgRcpList.do")
	public String boardList(RcpListVO rcplistvo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = RcpSer.countRcp();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "8";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "8";
		}
		rcplistvo = new RcpListVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", rcplistvo);
		model.addAttribute("RcpViewAll", RcpSer.selectRcp(rcplistvo));
//		System.out.println("안녕깐쮸롤 ");
//		System.out.println(rcplistvo);
//		System.out.println(RcpSer.selectRcp(rcplistvo));
		
		return "/rcp/VgRcpList";
	}
	
	@RequestMapping("/VgRcpDtail.do")
	public String detailRcp(RcpVO rcpvo, Model model) {
		model.addAttribute("RcpDtail", RcpSer.detailRcp(rcpvo));

		return "/rcp/VgRcpDtail";
	}
	


}
