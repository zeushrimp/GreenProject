package com.human.java.CmuService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuDAO.CmuDao;
import com.human.java.CmuVO.CmuVO;

@Service("CmuSer")
public class CmuSerImpl implements CmuSer{
	
	@Autowired
	private CmuDao cmudao;
	
	// 글 등록 버튼
	@Override
	public void cmu_write(CmuVO cmuvo) {
		cmudao.cmu_write(cmuvo);
	}
	
	// 총 게시글 수 카운트 
	@Override
	public int cmu_listcnt(CmuVO search) {
		return cmudao.cmu_listcnt(search);
	}
	
	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmu_getlist(CmuVO search) {
		return cmudao.cmu_getlist(search);
	}

	// 커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo){
		return cmudao.cmu_detailread(cmuvo);
	}

	// 게시글 수정
	@Override
	public void updatewrite(CmuVO cmuvo) throws Exception {
		cmudao.updatewrite(cmuvo);
	}
	
	// 게시글 삭제
	@Override
	public void deletewrite(CmuVO cmuvo) throws Exception {
		cmudao.deletewrite(cmuvo);
	}
	
	// 총 댓글 카운트 
	@Override
	public int cmu_replycount(CmuVO cmuvo) {
		return cmudao.cmu_replycount(cmuvo);
	}
	
	// 댓글 저장 (작성)
	@Override
	public void cmu_commentsave(CmuVO cmuvo) {
		cmudao.cmu_commentsave(cmuvo);
	}
	
	// 댓글 리스트 (댓글 불러오기)
	@Override
	public List<?> cmu_commentlist(CmuVO cmuvo) {
		return cmudao.cmu_commentlist(cmuvo);
	}
	
	// 댓글 삭제
	@Override
	public int cmu_commentdelete(CmuVO cmuvo) {
		return cmudao.cmu_commentdelete(cmuvo);
	}

	// 댓글 수정
	@Override
	public int cmu_commentupdate(CmuVO cmuvo) {
		return cmudao.cmu_commentupdate(cmuvo);
	}

	// ajax_category
	@Override
	public List<CmuVO> cmu_readlist_ajax(CmuVO cmuvo) {
		return cmudao.cmu_readlist_ajax(cmuvo);
	}
	

    // 커뮤니티 게시글 신고 : cmu 테이블에 신고정보 insert
	@Override
	public void cmu_report_insert(CmuVO cmuvo) {
		cmudao.cmu_report_insert(cmuvo);	
	}
	
	 // cmu 테이블 / cmu_report 컬럼에 신고수 누적 
	@Override
	public void cmu_report_columm_add(CmuVO cmuvo) {
		cmudao.cmu_report_columm_add(cmuvo);		
	}	

    // cmu_reported 신고 중복 체크
	@Override
	public int cmu_report_check(CmuVO cmuvo) {
		return cmudao.cmu_report_check(cmuvo);
	}


}
