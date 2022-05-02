package com.human.java.AdmController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.AdmService.AdmSer;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/adm")
public class AdmCon {

	@Autowired
	private AdmSer AdmSer;


	// 회원 목록 보기 (관리자)
	@RequestMapping("/VgAdmMain.do")
	public void showmain(Model model) {

		model.addAttribute("AUSR", AdmSer.showAllusr());

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
