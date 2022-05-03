package com.human.java.CmuController;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.human.java.CmuService.CmuSer;
import com.human.java.CmuVO.CmuVO;
@Controller
@RequestMapping("/cmu")
public class CmuCon {
	@Autowired
	private CmuSer CmuSer;

	// 단순 페이지 이동
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/cmu/" + url;
	}

	// 글 쓸 때, 유저인지 아닌지 확인
	@RequestMapping("cmu_check.do")
	public String cmu_check(HttpSession session) {

		// 또는 관리자 or 회원 아니면 로그인 창
		if (session.getAttribute("usr_Id") == null) {
			return "redirect:/usr/VgUsrlogin.do";
		}
		return "redirect:/cmu/VgCmuRegst.do";

	}

	// 커뮤니티 글 작성하기(버튼)
	@RequestMapping("cmu_write.do")
	public String cmu_write(CmuVO cmuvo, HttpSession session) {
		// 여기서 서비스 호출
		// 세션에서 아이디만 가져오기
		cmuvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		CmuSer.cmu_write(cmuvo);

		return "redirect:/cmu/VgCmuList.do";
	}

	// 커뮤니티 리스트 불러오기(페이징)
	@RequestMapping("/VgCmuList.do")
	public String cmu_readlist(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			,@RequestParam(required = false, defaultValue = "testTitle") String searchtype
			,@RequestParam(required = false, defaultValue = "CMU_CATE") String CMU_CATE
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") CmuVO search, CmuVO cmuvo) throws Exception {
		
		
		//검색
		model.addAttribute("search", search);
		search.setCMU_CATE(CMU_CATE);
		search.setSearchtype(searchtype);
		search.setKeyword(keyword);
		
		// 전체 게시글 개수를 얻어와 listCnt에 저장
		int listcnt = CmuSer.cmu_listcnt(search);

		model.addAttribute("replycount", CmuSer.cmu_replycount(cmuvo));
		//검색
		search.pageInfo(page, range, listcnt);
		//페이징
		model.addAttribute("pagination", search);
		//게시글 화면 출력
		model.addAttribute("cmupagelist", CmuSer.cmu_getlist(search));
		
		
		return "/cmu/VgCmuList";
	}

	// 커뮤니티 상세보기 & 댓글 불러오기
	@RequestMapping("/VgCmuDtail.do")
	public String cmu_detailread(CmuVO cmuvo,Model model){
		
		List<?> replylist = CmuSer.cmu_commentlist(cmuvo);
		
		
		model.addAttribute("cmuvo", CmuSer.cmu_detailread(cmuvo));
		model.addAttribute("replycount", CmuSer.cmu_replycount(cmuvo));
		model.addAttribute("replylist", replylist);
	
	return "/cmu/VgCmuDtail";
	}
	
	// 수정 폼으로 가기
	@RequestMapping(value = "/updatecmuform.do")
	public String cmuupdateform(CmuVO cmuvo,Model model){
		
		List<?> replylist = CmuSer.cmu_commentlist(cmuvo);
		
		model.addAttribute("cmuvo", CmuSer.cmu_detailread(cmuvo));
		model.addAttribute("replylist", replylist);
		
		return "/cmu/VgCmuModi";
	}
		
	// 게시글 수정하기
	@RequestMapping(value = "/updatecmu.do")
	public String updatewrite(@ModelAttribute("CmuVO") CmuVO cmuvo, HttpServletRequest request) throws Exception {
		CmuSer.updatewrite(cmuvo);
		return "redirect:/cmu/VgCmuDtail.do?CMU_PK=" + cmuvo.getCMU_PK();
	}

	// 게시글 삭제하기
	@RequestMapping(value = "/deletecmu.do")
	public String deletewrite(@ModelAttribute("CmuVO") CmuVO cmuvo) throws Exception {
		CmuSer.deletewrite(cmuvo);
		return "redirect:/cmu/VgCmuList.do";
	}
		
	// 댓글 작성
	@RequestMapping("/cmu_commentsave.do")
	public String cmu_commentsave(CmuVO cmuvo, HttpSession session) {
		cmuvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		CmuSer.cmu_commentsave(cmuvo);
		return "redirect:/cmu/VgCmuDtail.do?CMU_PK=" + cmuvo.getCMU_PK();
	}

	// 댓글 삭제
	@RequestMapping("/cmu_replydelete.do")
	public String cmu_commentdelete(HttpServletRequest request, CmuVO cmuvo) {		
		cmuvo.getCCM_PK();
		CmuSer.cmu_commentdelete(cmuvo);		
		return "redirect:/cmu/VgCmuDtail.do?CMU_PK=" + cmuvo.getCMU_PK();
	}
	
	// 댓글 수정
	
	
    // 이미지 업로드
    @RequestMapping(value="/imageupload.do", method = RequestMethod.POST)
    public void imageupload(HttpServletRequest request, HttpSession session,
    		HttpServletResponse response, MultipartHttpServletRequest multiFile
    		, @RequestParam MultipartFile upload) throws Exception{
    	// 랜덤 문자 생성
    	UUID uid = UUID.randomUUID();
    	
    	OutputStream out = null;
    	PrintWriter printWriter = null;
    	
    	//인코딩
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	try{
    		//파일 이름 가져오기
    		String fileName = upload.getOriginalFilename();
    		byte[] bytes = upload.getBytes();
    		
    		//이미지 경로 생성
			/* String path = "C:\\Users\\img" + "ckImage/"; */	// 이미지 경로 설정(폴더 자동 생성)
    		String path = session.getServletContext().getRealPath("/resources/cmuphoto");
    		String ckUploadPath = path + "/" + uid + "_" + fileName;
    		File folder = new File(path);
    		System.out.println("path:"+path);	// 이미지 저장경로 console에 확인
    		//해당 디렉토리 확인
    		if(!folder.exists()){
    			try{
    				folder.mkdirs(); // 폴더 생성
    		}catch(Exception e){
    			e.getStackTrace();
    		}
    	}
    	
    	out = new FileOutputStream(new File(ckUploadPath));
    	out.write(bytes);
    	out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화
    	
    	String callback = request.getParameter("CKEditorFuncNum");
    	printWriter = response.getWriter();
    	String fileUrl = "imagesubmit.do?uid=" + uid + "&fileName=" + fileName; // 작성화면
    	
    	// 업로드시 메시지 출력
    	printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
    	printWriter.flush();
    	
    	}catch(IOException e){
    		e.printStackTrace();
    	} finally {
    		try {
    		if(out != null) { out.close(); }
    		if(printWriter != null) { printWriter.close(); }
    	} catch(IOException e) { e.printStackTrace(); }
    	}
    	return;
    }

    // 서버로 전송된 이미지 뿌리기
    @RequestMapping(value="imagesubmit.do")
    public void ckSubmit(@RequestParam(value="uid") String uid, HttpSession session
    		, @RequestParam(value="fileName") String fileName, HttpServletRequest request
    		, HttpServletResponse response) throws ServletException, IOException{
    	
    	//서버에 저장된 이미지 경로
		/* String path = "C:\\Users\\img" + "ckImage/"; */	// 저장된 이미지 경로
    	String path = session.getServletContext().getRealPath("/resources/cmuphoto");
    	System.out.println("path:"+path);
    	String sDirPath = path + "/" + uid + "_" + fileName;
    	
    	File imgFile = new File(sDirPath);
    	
    	//사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
    	if(imgFile.isFile()){
    		byte[] buf = new byte[1024];
    		int readByte = 0;
    		int length = 0;
    		byte[] imgBuf = null;
    		
    		FileInputStream fileInputStream = null;
    		ByteArrayOutputStream outputStream = null;
    		ServletOutputStream out = null;
    		
    		try{
    			fileInputStream = new FileInputStream(imgFile);
    			outputStream = new ByteArrayOutputStream();
    			out = response.getOutputStream();
    			
    			while((readByte = fileInputStream.read(buf)) != -1){
    				outputStream.write(buf, 0, readByte); 
    			}
    			
    			imgBuf = outputStream.toByteArray();
    			length = imgBuf.length;
    			out.write(imgBuf, 0, length);
    			out.flush();
    			
    		}catch(IOException e){
    			e.printStackTrace();
    		}finally {
    			outputStream.close();
    			fileInputStream.close();
    			out.close();
    			}
    		}
    } 

}
	

