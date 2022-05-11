package com.human.java.AdmController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
import com.human.java.CmuVO.Pagination;
import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/adm")
public class AdmCon {

	@Autowired
	private AdmSer AdmSer;
	
    // 관리자 페이지 중 회원목록이자 메인 화면
    @RequestMapping("/VgAdmMain.do")
    public void select_userinfo_ad_ajax(Model model, UsrVO usrvo, AdmListVO admlistvo
    		,@RequestParam(value="now_page", required=false)String now_page,
			 @RequestParam(value="cnt_per_page", required=false)String cnt_per_page 		
    		) {
    	System.out.println("컨트롤러 탔다");
    	// 전체 게시글 개수를 얻어와 total에 저장 (회원목록)
		int total = AdmSer.ad_userinfo_listcnt();
		if (now_page == null && cnt_per_page == null) {
			now_page = "1";
			cnt_per_page = "8";
		} else if (now_page == null) {
			now_page = "1";
		} else if (cnt_per_page == null) { 
			cnt_per_page = "8";
		}
		
		admlistvo = new AdmListVO(total, Integer.parseInt(now_page), Integer.parseInt(cnt_per_page));
		model.addAttribute("paging_ad", admlistvo);  	
		// 회원 목록 보기
		model.addAttribute("AUSR", AdmSer.select_userinfo_ad_ajax(usrvo,admlistvo));


    }
	
    // 관리자 페이지 중 레시피 목록_ajax
    @ResponseBody
    @RequestMapping("/select_rcp_list_ad_ajax.do")
    public List<RcpVO> select_rcp_list_ad_ajax(RcpVO rcpvo, RcpListVO rcplistvo, AdmListVO admlistvo
			, @RequestParam(value="now_page", required=false)String now_page
			, @RequestParam(value="cnt_per_page", required=false)String cnt_per_page) {
    	
    	System.out.println("레시피 ajax 진입 성공");
    	// 레시피 목록 뽑은거를 rcp_list에 담음
    	List<RcpVO> rcp_list = AdmSer.select_rcp_list_ad_ajax(admlistvo);
    	System.out.println(rcp_list.size());
    	
//    	// 전체 게시글 개수를 얻어와 total에 저장 (회원목록)
//		int total = AdmSer.ad_userinfo_listcnt();
//		if (now_page == null && cnt_per_page == null) {
//			now_page = "1";
//			cnt_per_page = "8";
//		} else if (now_page == null) {
//			now_page = "1";
//		} else if (cnt_per_page == null) { 
//			cnt_per_page = "8";
//		}


    	return rcp_list;
    }

    // 관리자 페이지 중 커뮤니티 목록_ajax
    @ResponseBody
    @RequestMapping("/select_cmu_list_ad_ajax.do")
    public List<CmuVO> select_cmu_list_ad_ajax(CmuVO cmuvo, Pagination page, AdmListVO admlistvo
			, @RequestParam(value="now_page", required=false)String now_page
			, @RequestParam(value="cnt_per_page", required=false)String cnt_per_page) {
    	
//    	// 전체 게시글 개수를 얻어와 total에 저장 (회원목록)
//		int total = AdmSer.ad_userinfo_listcnt();
//		if (now_page == null && cnt_per_page == null) {
//			now_page = "1";
//			cnt_per_page = "8";
//		} else if (now_page == null) {
//			now_page = "1";
//		} else if (cnt_per_page == null) { 
//			cnt_per_page = "8";
//		}
    	System.out.println("커뮤니티 ajax 진입 성공");
    	List<CmuVO> cmu_list = AdmSer.select_cmu_list_ad_ajax(admlistvo);
    	System.out.println(cmu_list.size());


    	return cmu_list;
    }    
    
    
    
	// 관리자 회원 정보 변경 (관리자)
	@RequestMapping("/ChangeUsrInfo.do")
	public String ChangeUsrInfo(UsrVO usrvo, Model model) {

		AdmSer.changeUsrInfo(usrvo);
		return "redirect:/adm/VgAdmMain.do";

	}


	 // 회원 정보 삭제
	 @RequestMapping("/delete_usr_info.do")
	 public String delete_usr_info(UsrVO usrvo, HttpServletResponse response) {
		 AdmSer.delete_usr_info(usrvo);
		 response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>"
						+ "alert('회원이 삭제되었습니다.');"
						+ "</script>");

			} catch (IOException e) {
		
				e.printStackTrace();
			}
	
		 

		 return "redirect:/adm/VgAdmMain.do";
	 
	 }		
	 

		

}
