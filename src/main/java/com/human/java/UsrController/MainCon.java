package com.human.java.UsrController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.human.java.UsrService.MainSer;

@Controller
@RequestMapping("/home")
public class MainCon {
	@Autowired
	private MainSer MainSer;
	
	@RequestMapping("/VgMain.do")
	public void showMain(Model model) {
		
		model.addAttribute("MainCmu",MainSer.showMainCmu());
		model.addAttribute("MNR",MainSer.MshowNewRcp());
		model.addAttribute("MPR",MainSer.MshowPopRcp());
		
	}
}
