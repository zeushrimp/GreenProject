package com.human.java.UsrController;

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

import com.human.java.CmuVO.CmuVO;
import com.human.java.RcpVO.RcpVO;
import com.human.java.UsrService.MpgMainSer;
import com.human.java.UsrVO.UsrVO;

@Controller
@RequestMapping("/mpg")
public class MpgMainCon {

	@Autowired
	private MpgMainSer MpgMainSer;

//	@Autowired
//	private UsrRegSer UsrRegSer;

	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {

		return "/mpg/" + url;

	}

	// 로그인 상태 유무로 마이페이지 or 로그인 페이지로 들어가는 컨트롤러
	@RequestMapping("VgMpgMain.do")
	public String login_check(UsrVO mpgvo, HttpSession session, Model model) {
		System.out.println("VgMpgMain +   호출 ");
		if (session.getAttribute("usr_Id") == null) {
			return "redirect:/usr/VgUsrLogin.do";
		}

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		// session은 오브젝트로 받아오기 때문에 적절한 타입에 담아주는 과정 필요.
		UsrVO alldata = MpgMainSer.mpglogincheck(mpgvo);
		String name = alldata.getUSR_NAME();
		String pwhide = "*".repeat(alldata.getUSR_PW().length());
		model.addAttribute("mpgdata", alldata);
		model.addAttribute("pwhide", pwhide);

		List<CmuVO> post = MpgMainSer.mpg_myposts(mpgvo);

		model.addAttribute("myposts", post);

		List<RcpVO> recipe = MpgMainSer.mpg_myrecipes(mpgvo);

		model.addAttribute("myrecipes", recipe);

		List<RcpVO> scrapnum = MpgMainSer.scrapnum(mpgvo);

		System.out.println("scrapnum : " + scrapnum.size());

		model.addAttribute("myscraprcp", MpgMainSer.get_mpgscrcp(scrapnum));

		for (int i = 0; i < scrapnum.size(); i++) {
			System.out.println(scrapnum.get(i));
		}

		// service > 내가 작성한 글을 가져오는 서비스

		if (name != null) { // 로그인상태일경우

			return "/mpg/VgMpgMain";

		} else {
			return "redirect:/usr/VgUsrLogin.do";
		}
	}

	/**
	 * 회 변경 컨트롤러
	 * 
	 * @mapping VgMpgMainRsn.do
	 * @param mpgvo
	 * @param session
	 * @return "VgUsrLogin.do"
	 * @author 신재우
	 */

	@RequestMapping("VgMpgMainRsn.do")
	public String resignuser(UsrVO mpgvo, HttpSession session) {

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		MpgMainSer.resignuser(mpgvo);
		System.out.println("탈퇴 ");

		return "redirect:/usr/VgUsrLogin.do";

	}

	/**
	 * 비밀번호 변경 컨트롤러
	 * 
	 * @mapping modifypw.do
	 * @param mpgvo
	 * @param session
	 * @return "VgUsrLogin.do"
	 * @author 신재우
	 * 
	 */

	@RequestMapping("modifypw.do")
	public String modifypw(UsrVO mpgvo, HttpSession session) {
		System.out.println("test");

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		MpgMainSer.modifyfpw(mpgvo);

		return "redirect:/usr/VgUsrLogin.do";

	}

	/**
	 * 닉네임 변경 컨트롤러
	 * 
	 * @mapping modifypnk.do
	 * @param mpgvo
	 * @param session
	 * @return "VgMpgMain.do"
	 * @author 신재우
	 * 
	 */

	@RequestMapping("modifynk.do")
	public String modifynk(UsrVO mpgvo, HttpSession session) {
		System.out.println("test");

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		MpgMainSer.modifynk(mpgvo);

		return "redirect:/mpg/VgMpgMain.do";

	}

	/**
	 * 채식 변경 컨트롤러
	 * 
	 * @mapping modifyvg.do
	 * @param mpgvo
	 * @param session
	 * @return "VgMpgMain.do"
	 * @author 신재우
	 * 
	 */

	@RequestMapping("modifyvg.do")
	public String modifyvg(UsrVO mpgvo, HttpSession session) {
		System.out.println("test");

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		MpgMainSer.modifyvg(mpgvo);

		return "redirect:/mpg/VgMpgMain.do";

	}

	@RequestMapping("mpg_saveimg.do")
	public ModelAndView mpg_saveimg(MultipartFile file, HttpSession session, UsrVO mpgvo) throws IOException {
		ModelAndView mav = new ModelAndView("redirect:/mpg/VgMpgMain.do");

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));

		String photoImg = null;
		if (file != null) {
			Base64.Encoder encoder = Base64.getEncoder();
			byte[] photoEncode = encoder.encode(file.getBytes());
			photoImg = new String(photoEncode, "UTF8");
		}
		System.out.println(photoImg);

		mpgvo.setUSR_PHOTO(photoImg);
		MpgMainSer.mpg_saveimg(mpgvo);

//		byte[] imageInByte;
//s
//		BufferedImage originalImage = ImageIO.read(file.getInputStream());
//		ByteArrayOutputStream baos = new ByteArrayOutputStream();
//		ImageIO.write(originalImage, "png", baos);
//		baos.flush();
//
//		imageInByte = baos.toByteArray();
//		System.out.println(Arrays.toString(imageInByte));
//		mpgvo.setUSR_PHOTO(imageInByte);
//		MpgMainSer.mpg_saveimg(mpgvo);
//		baos.close();

		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("================== file   END ==================");

		return mav;
	}

	@RequestMapping("VgMpgChat.do")
	public String VgMpgChat(UsrVO mpgvo, HttpSession session, Model model) {
		System.out.println("VgMpgChat +   호출 ");
		if (session.getAttribute("usr_Id") == null) {
			return "redirect:/usr/VgUsrLogin.do";
		}

		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		// session은 오브젝트로 받아오기 때문에 적절한 타입에 담아주는 과정 필요.
		UsrVO alldata = MpgMainSer.mpglogincheck(mpgvo);
		String name = alldata.getUSR_NAME();
		int adm = alldata.getUSR_ADMIN();

		model.addAttribute("mpgdata", alldata);

		// service > 내가 작성한 글을 가져오는 서비스

		if (name != null && adm == 0) { // 로그인상태일경우

			System.out.println("일반 채팅");
			return "/mpg/VgMpgChat1";

		} else if (name != null && adm == 1) {
			
			System.out.println("관리 채팅");
			List<UsrVO> chatList = MpgMainSer.getChatList();
			
			model.addAttribute("chatList", chatList);
			
			return "/mpg/VgMpgChatList";
			
		}
		else {

			return "redirect:/usr/VgUsrLogin.do";
		}
	}
	
	@ResponseBody
	@RequestMapping("updatechatid.do")
	public String updatechatid(UsrVO mpgvo, HttpSession session) {
		System.out.println("test");
		mpgvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		
		System.out.println("id : " + mpgvo.getUSR_ID());
		System.out.println("chatid : " + mpgvo.getUSR_CHAT_ID());
		
		MpgMainSer.updatechatid(mpgvo);

		return "관리자를 호출하였습니다.";
	}
	
	@RequestMapping("VgMpgChat2.do")
	public String test(UsrVO mpgvo ,Model model) {
		System.out.println("test");
				
		System.out.println("id : " + mpgvo.getUSR_ID());
		System.out.println("chatid : " + mpgvo.getUSR_CHAT_ID());
		
		MpgMainSer.mpglogincheck(mpgvo);
		System.out.println(MpgMainSer.mpglogincheck(mpgvo));
		UsrVO vo = MpgMainSer.mpglogincheck(mpgvo);
		
		model.addAttribute("mpgdata",vo);

		return "/mpg/VgMpgChat2";
	}
	

}