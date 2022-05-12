package com.human.java.AdmController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.AdmService.AdmSer;
import com.human.java.AdmVO.AdmListVO;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/adm")
public class AdmCon<V> {

	@Autowired
	private AdmSer AdmSer;
	
    // 관리자 페이지 중 회원목록이자 메인 화면
    @RequestMapping("/VgAdmMain.do")
    public void select_userinfo_ad_ajax(Model model, UsrVO usrvo, AdmListVO admlistvo
    		,@RequestParam(value="now_page", required=false)String now_page,
			 @RequestParam(value="cnt_per_page", required=false)String cnt_per_page 		
    		) {
    	// 전체 게시글 개수를 얻어와 total에 저장 (회원목록)
		int total = AdmSer.ad_userinfo_listcnt();
		if (now_page == null && cnt_per_page == null) {
			now_page = "1";
			cnt_per_page = "20";
		} else if (now_page == null) {
			now_page = "1";
		} else if (cnt_per_page == null) { 
			cnt_per_page = "20";
		}
		
		admlistvo = new AdmListVO(total, Integer.parseInt(now_page), Integer.parseInt(cnt_per_page));
		model.addAttribute("paging_ad", admlistvo);  	
		// 회원 목록 보기
		model.addAttribute("AUSR", AdmSer.select_userinfo_ad_ajax(usrvo,admlistvo));


    }
	
    // 관리자 페이지 중 레시피 목록_ajax
    @ResponseBody
    @RequestMapping("/select_rcp_list_ad_ajax.do")
    public HashMap select_rcp_list_ad_ajax(RcpVO rcpvo, AdmListVO admlistvo
			,Model model, @RequestParam(value="now_page", required=false)String now_page
			, @RequestParam(value="cnt_per_page", required=false)String cnt_per_page) {
    	
    	// 전체 게시글 개수를 얻어와 total에 저장 (회원목록)
		int total = AdmSer.ad_rcp_listcnt();

		if (now_page == null && cnt_per_page == null) {
			now_page = "1";
			cnt_per_page = "20";
		} else if (now_page == null) {
			now_page = "1";
		} else if (cnt_per_page == null) { 
			cnt_per_page = "20";
		}

		admlistvo = new AdmListVO(total, Integer.parseInt(now_page), Integer.parseInt(cnt_per_page));
    	// 페이징 관련해서 model addAttribute
//    	model.addAttribute("paging_ad", admlistvo);
    	
		
		HashMap rcp_page_map = new HashMap();
    	
    	rcp_page_map.put("rcpvo", AdmSer.select_rcp_list_ad_ajax(admlistvo));
    	rcp_page_map.put("pagnig", admlistvo);
    	
    	
    	return rcp_page_map;
    }

    // 관리자 페이지 중 커뮤니티 목록_ajax
    @ResponseBody
    @RequestMapping("/select_cmu_list_ad_ajax.do")
    public HashMap select_cmu_list_ad_ajax(CmuVO cmuvo, AdmListVO admlistvo
			,Model model, @RequestParam(value="now_page", required=false)String now_page
			, @RequestParam(value="cnt_per_page", required=false)String cnt_per_page) {
    	
//    	// 전체 게시글 개수를 얻어와 total에 저장 (회원목록)
		int total = AdmSer.ad_cmu_listcnt();
		
		if (now_page == null && cnt_per_page == null) {
			now_page = "1";
			cnt_per_page = "20";
		} else if (now_page == null) {
			now_page = "1";
		} else if (cnt_per_page == null) { 
			cnt_per_page = "20";
		}
		
		admlistvo = new AdmListVO(total, Integer.parseInt(now_page), Integer.parseInt(cnt_per_page));
		
		HashMap cmu_page_map = new HashMap();
		
		
		cmu_page_map.put("cmuvo", AdmSer.select_cmu_list_ad_ajax(admlistvo));
    	cmu_page_map.put("pagnig", admlistvo);
    	

    	return cmu_page_map;
    }    
    
    
    
	// 관리자 회원 정보 변경 (관리자)
	@RequestMapping("/ChangeUsrInfo.do")
	public String ChangeUsrInfo(UsrVO usrvo, Model model) {

		AdmSer.changeUsrInfo(usrvo);
		return "redirect:/adm/VgAdmMain.do";

	}


	 // 회원 정보 삭제
	 @RequestMapping("/delete_usr_info.do")
	 public String delete_usr_info(UsrVO usrvo, HttpServletResponse response) throws IOException{
		 AdmSer.delete_usr_info(usrvo);
		 response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			out = response.getWriter();
			out.println("<script>" + "alert('회원이 삭제되었습니다.');" + "</script>");



		 return "redirect:/adm/VgAdmMain.do";
	 
	 }		
	 

		

}
