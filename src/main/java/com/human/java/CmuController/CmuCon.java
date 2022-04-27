package com.human.java.CmuController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.CmuService.CmuSer;
import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.SearchVO;
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
			,@RequestParam(required = false, defaultValue = "CMU_TITLE") String searchtype
			,@RequestParam(required = false) String keyword,
			@ModelAttribute("search") CmuVO search) throws Exception {
		//검색
		model.addAttribute("search", search);
		search.setSearchtype(searchtype);
		search.setKeyword(keyword);
		
		// 전체 게시글 개수를 얻어와 listCnt에 저장
		int listcnt = CmuSer.cmu_listcnt(search);

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
		model.addAttribute("replylist", replylist);
	
	return "/cmu/VgCmuDtail";
	}

	// 게시글 수정하기
	@RequestMapping(value = "/updateTest.do")
	public String updatewrite(@ModelAttribute("CmuVO") CmuVO cmuvo, HttpServletRequest request) throws Exception {
		CmuSer.updatewrite(cmuvo);
		return "redirect:/cmu/VgCmuList.do";
	}

	// 게시글 삭제하기
	@RequestMapping(value = "/deleteTest.do")
	public String deletewrite(@ModelAttribute("CmuVO") CmuVO cmuvo) throws Exception {
		CmuSer.deletewrite(cmuvo);
		return "redirect:/cmu/VgCmuList.do";
	}
		
	// 댓글 작성
	@RequestMapping("/cmu_commentsave.do")
	public String cmu_commentsave(CmuVO cmuvo) {

		CmuSer.cmu_commentsave(cmuvo);

		return "redirect:/cmu/VgCmuDtail.do?CMU_PK=" + cmuvo.getCMU_PK();
	}

	// 댓글 삭제
	@RequestMapping("/cmu_replydelete.do")
	public String cmu_commentdelete(HttpServletRequest request, CmuVO cmuvo) {
		
		CmuSer.cmu_commentdelete(cmuvo);
		
		return "redirect:/cmu/VgCmuDtail.do?CMU_PK=" + cmuvo.getCMU_PK();
	}
	
}
