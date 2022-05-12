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
import org.springframework.web.util.NestedServletException;

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
	public ModelAndView vegcipefile(MultipartFile file, HttpSession session, RcpVO rcpvo) throws IOException{
	
		rcpvo.setRCPRS_TITLE("RCPRS_TITLE")
;
		
		ModelAndView mav = new ModelAndView("redirect:/ai/VgAiVideo.do");
		
//		String photoImg = null;
//		if (file != null) {
//			Base64.Encoder encoder = Base64.getEncoder();
//			byte[] photoEncode = encoder.encode(file.getBytes());
//			photoImg = new String(photoEncode, "UTF8");
//		}
//		System.out.println(photoImg);
//
//		
//		String s = photoImg;;
		
		
		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("================== file   END ==================");

		AiSer.upload_pic(String.valueOf(file));
		return mav;
	}
	
	@RequestMapping("VgAiVideo.do")
	public String countrcp(Model model) {
		
		String countrcp = AiSer.countrcp();
		model.addAttribute("countrcp", countrcp);
		return "/ai/VgAiVideo";

	}
	
	@RequestMapping("vegcipefilecheck.do")
	public String vegcipefilecheck(Model model, RcpVO rcpvo) {
		
		
		
		List<RcpVO> airecipe = AiSer.Ai_recipe(rcpvo);
		System.out.println(airecipe);
		
		model.addAttribute("vegcipe", airecipe);
		
		return "/ai/VgAiList";

	}
	
}