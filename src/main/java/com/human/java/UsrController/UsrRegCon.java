package com.human.java.UsrController;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.UsrService.UsrRegSer;
import com.human.java.UsrVO.UsrVO;


@Controller
@RequestMapping("/usr")
public class UsrRegCon {
	
	@Autowired
	private UsrRegSer UsrRegSer;
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {

		return "/usr/"+url;
	}
	
	@RequestMapping("/VgUsrLogin_no.do")
	public String LoginFail() {
		
	
		return "/usr/VgUsrLogin";
	}
	
	
	
	
	
	@RequestMapping("/checkId.do")
	@ResponseBody
	public String checkId(UsrVO usrvo) {
		int result = UsrRegSer.checkId(usrvo);
		return result+"";
	}
	
	//로그인 컨트롤러
	@RequestMapping("/VgUsrLoginCom.do")
	public String login(UsrVO usrvo, HttpSession session) {
		UsrVO result = UsrRegSer.Usr_Login(usrvo);
		if( result == null ) {
		
			
			return "redirect:/usr/VgUsrLogin_no.do";
		} else if(result.getUSR_OUT() == 0) {
			
			return "redirect:/usr/VgUsrLogin_cant.do";
		} else {
			
			session.setAttribute("usr_id", result.getUSR_ID());
			session.setAttribute("usr_admin", result.getUSR_ADMIN());

			return "redirect:/usr/VgUsrLogin_ok.do";
			
		}
		
	}
	//회원가입 성공 컨트롤러	
	@RequestMapping("VgUsrRegstDone.do")
	public String insertUsr(UsrVO usrvo) {
		usrvo.setUSR_EMAIL2(usrvo.getUSR_EMAIL()+"@"+usrvo.getUSR_EMAIL1());
		System.out.println(usrvo.getUSR_EMAIL2());
		
		
		UsrRegSer.insertUsr(usrvo);
		
		
		return "redirect:/usr/VgUsrRegstLogin.do";
	}


	//이메일 인증 컨트롤러
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{
	    
	    /* 뷰(View)로부터 넘어온 데이터 확인 */
	   System.out.println(email);
	   Random random = new Random();
	   int checkNum= random.nextInt(888888)+111111;
	   System.out.println(checkNum);
	   /* 이메일 보내기 */
	   String setFrom = "epzkf97@gmail.com";
	   String toMail = email;
	   String title = "회원가입 인증 이메일 입니다.";
	   String content = 
	           "홈페이지를 방문해주셔서 감사합니다." +
	           "<br><br>" + 
	           "인증 번호는 " + checkNum + "입니다." + 
	           "<br>" + 
	           "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
	   try {
	       
	       MimeMessage message = mailSender.createMimeMessage();
	       MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
	       helper.setFrom(setFrom);
	       helper.setTo(toMail);
	       helper.setSubject(title);
	       helper.setText(content,true);
	       mailSender.send(message);
	       
	   }catch(Exception e) {
	       e.printStackTrace();
	   }
	   
	   return Integer.toString(checkNum);
	}
	
	@RequestMapping("UsrFindId.do")
	@ResponseBody
	public String FindId(String USR_NAME,String USR_TEL) {			
		UsrVO usrvo= new UsrVO();
		usrvo.setUSR_NAME(USR_NAME);
		usrvo.setUSR_TEL(USR_TEL);		
		String result = UsrRegSer.FindId(usrvo);	
		return result;
	}
	
	@RequestMapping("UsrFindPw.do")
	@ResponseBody
	public String FindPw(String USR_NAME,String USR_TEL,String USR_ID) {			
		UsrVO usrvo= new UsrVO();
		usrvo.setUSR_NAME(USR_NAME);
		usrvo.setUSR_TEL(USR_TEL);
		usrvo.setUSR_ID(USR_ID);
		String result = UsrRegSer.FindPw(usrvo);	
		System.out.println(result);
		return result;
	}
	
}
