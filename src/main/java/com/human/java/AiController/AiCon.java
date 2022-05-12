package com.human.java.AiController;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.human.java.AIService.AiSer;
import com.human.java.RcpVO.RcpVO;

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
	
	// 냉레 사진 업로드 경로
	@RequestMapping("vegcipefile.do")
	public String vegcipefile(MultipartFile file, HttpSession session, Model model) throws Exception{
									
		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("================== file   END ==================");

		AiSer.store_image(file);
		
		String vegcipefirst = AiSer.upload_pic(file);
		
		System.out.println("업로드 사진 후 : "+vegcipefirst);
		model.addAttribute("vegcipefirst", vegcipefirst);
		
		return "/ai/VgAiRegst";
	}
	
	// 냉레 AI 모달 동영상
	@RequestMapping("VgAiVideo.do")
	public String countrcp(Model model) {
		
		String countrcp = AiSer.countrcp();
		model.addAttribute("countrcp", countrcp);
		return "/ai/VgAiVideo";

	}
	
	// 사진 업로드 후 레시피
	@RequestMapping("vegcipefilecheck.do")
	public String vegcipefilecheck(Locale locale, Model model, RcpVO rcpvo, String RCPRS_TITLE ) {
		
		System.out.println(rcpvo.getRCPRS_TITLE());

		List<RcpVO> airecipe = AiSer.Ai_recipe(rcpvo);
		System.out.println("업로드 후 리스트 : "+airecipe);
		
		model.addAttribute("vegcipe", airecipe);
		System.out.println(model.addAttribute("vegcipe", airecipe));
		
		return "/ai/VgAiList";

	}
	
}