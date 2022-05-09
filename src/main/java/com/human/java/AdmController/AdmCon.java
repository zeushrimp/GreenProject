package com.human.java.AdmController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.AdmService.AdmSer;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/adm")
public class AdmCon {

	@Autowired
	private AdmSer AdmSer;
	
    // 관리자 페이지 중 회원목록_ajax이자 메인 화면
    @RequestMapping("/VgAdmMain.do")
    public void select_userinfo_ad_ajax(Model model, UsrVO usrvo ) {
    	

		// 회원 목록 보기
		model.addAttribute("AUSR", AdmSer.select_userinfo_ad_ajax(usrvo));


    }
	
    // 관리자 페이지 중 레시피 목록_ajax
    @ResponseBody
    @RequestMapping("/select_rcp_list_ad_ajax.do")
    public List<RcpVO> select_rcp_list_ad_ajax() {
    	
    	System.out.println("레시피 ajax 진입 성공");
    	List<RcpVO> rcp_list = AdmSer.select_rcp_list_ad_ajax();
    	System.out.println(rcp_list.size());

    	return rcp_list;
    }

    // 관리자 페이지 중 커뮤니티 목록_ajax
    @ResponseBody
    @RequestMapping("/select_cmu_list_ad_ajax.do")
    public List<CmuVO> select_cmu_list_ad_ajax() {
    	

    	System.out.println("커뮤니티 ajax 진입 성공");
    	List<CmuVO> cmu_list = AdmSer.select_cmu_list_ad_ajax();
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
