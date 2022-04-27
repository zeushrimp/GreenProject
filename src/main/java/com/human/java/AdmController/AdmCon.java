package com.human.java.AdmController;

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
	
	@RequestMapping("/VgAdmMain.do")
	public void showmain(Model model){
	
		model.addAttribute("AUSR",AdmSer.showAllusr());
		
	}
	
	@RequestMapping("/ChangeUsrInfo.do")
	public String ChangeUsrInfo(UsrVO usrvo,Model model) {
		
		
		AdmSer.changeUsrInfo(usrvo);
		return "redirect:/adm/VgAdmMain.do";
				
	}
	
}
