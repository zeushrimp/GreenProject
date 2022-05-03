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
		if (session.getAttribute("usr_Id") == null) { 
			return "redirect:/usr/VgUsrLogin.do";
		}else {
		return "redirect:/rcp/VgRcpRegst.do";
		}
	}	
	
	
	@RequestMapping("VgRcpRegDone.do")
	public String insertRcp(RcpVO rcpvo, HttpSession session) {
		int i=RcpSer.getPK();
		rcpvo.setRCP_PK(i);
		RcpSer.insertRcp(rcpvo);
		String[] Rcp_content  = rcpvo.getRCPCT_CONTENT().split(",");
		for(int j=0;j<Rcp_content.length; j++) {
			RcpVO vo1 = new RcpVO();
			vo1.setRCP_PK(i);
			vo1.setRCPCT_CONTENT(Rcp_content[j]);
			RcpSer.insertRcp_cont(vo1);
		}
		
		String[] Rcp_resours = rcpvo.getRCPRS_TITLE().split(",");
		String[] Rcp_nyan = rcpvo.getRCPRS_AMOUNT().split(",");
		for(int r=0; r<Rcp_resours.length; r++) {
			RcpVO vo2 = new RcpVO();
			vo2.setRCP_PK(i);
			vo2.setRCPRS_TITLE(Rcp_resours[r]);
			vo2.setRCPRS_AMOUNT(Rcp_nyan[r]);
			RcpSer.insertRcp_reso(vo2);
		}
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
		RcpSer.viewsCountRcp(rcpvo.getRCP_PK());
		model.addAttribute("RcpDtail", RcpSer.detailRcp(rcpvo));
		model.addAttribute("detailRcp_reso", RcpSer.detailRcp_reso(rcpvo));
		model.addAttribute("detailRcp_cont", RcpSer.detailRcp_cont(rcpvo));
		return "/rcp/VgRcpDtail";
	}
	
	@RequestMapping("/VgRcpDel.do")
	public String delcheck(RcpVO rcpvo) {
		RcpSer.delcheck(rcpvo);
		RcpSer.delcheck_CONT(rcpvo);
		RcpSer.delcheck_RESO(rcpvo);
		
		return "redirect:/rcp/VgRcpList.do";
	}
	
	@RequestMapping("/VgRcpRew.do")
	public String startRewriteRcp(RcpVO rcpvo, Model model) {
		model.addAttribute("RcpDtail", RcpSer.detailRcp(rcpvo));
		model.addAttribute("detailRcp_reso", RcpSer.detailRcp_reso(rcpvo));
		model.addAttribute("detailRcp_cont", RcpSer.detailRcp_cont(rcpvo));
		return "/rcp/VgRcpRew";
	}
	
	@RequestMapping("/VgRcpRewDone.do")
	public String rewcheck(RcpVO rcpvo, Model model) {
		int pk = rcpvo.getRCP_PK();
		RcpSer.rewriteRcp(rcpvo);
		RcpSer.delcheck_CONT(rcpvo);
		RcpSer.delcheck_RESO(rcpvo);
		String[] Rcp_content  = rcpvo.getRCPCT_CONTENT().split(",");
		for(int j=0;j<Rcp_content.length; j++) {
			RcpVO vo1 = new RcpVO();
			vo1.setRCP_PK(pk);
			vo1.setRCPCT_CONTENT(Rcp_content[j]);
			RcpSer.insertRcp_cont(vo1);
		}
		System.out.println(rcpvo);
		String[] Rcp_resours = rcpvo.getRCPRS_TITLE().split(",");
		String[] Rcp_nyan = rcpvo.getRCPRS_AMOUNT().split(",");
		for(int r=0; r<Rcp_resours.length; r++) {
			RcpVO vo2 = new RcpVO();
			vo2.setRCP_PK(pk);
			vo2.setRCPRS_TITLE(Rcp_resours[r]);
			vo2.setRCPRS_AMOUNT(Rcp_nyan[r]);
			RcpSer.insertRcp_reso(vo2);
		}
		return "redirect:/rcp/VgRcpList.do";
	}

}
