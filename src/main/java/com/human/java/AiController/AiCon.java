package com.human.java.AiController;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.AIService.AiSer;
import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrService.MpgMainSer;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/ai")
public class AiCon {

	@Autowired
	private AiSer AiSer;

//	@Autowired
//	private UsrRegSer UsrRegSer;

	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {

		return "/ai/" + url;

	}

	@RequestMapping("vegcipefile.do")
	public String vegcipefile(MultipartFile file, HttpSession session,RcpVO rcpvo,Model model) throws IOException {
	
		rcpvo.setRCPRS_TITLE("양파")
;
		
		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("================== file   END ==================");

		List<RcpVO> airecipe = AiSer.Ai_recipe(rcpvo);
		System.out.println(airecipe);
		
		model.addAttribute("vegcipe", airecipe);
				
		
		return "/ai/VgAiList";

	}
}