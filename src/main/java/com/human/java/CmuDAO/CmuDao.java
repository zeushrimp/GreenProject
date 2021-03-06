package com.human.java.CmuDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;


public interface CmuDao {
	
	// 글 작성
	void cmu_write(CmuVO cmuvo);
	
	// 글 목록 리스트 불러오기 (페이징)
	public List<CmuVO> cmu_getlist(CmuVO search);
	
	// 개시물 총 수
	public int cmu_listcnt(CmuVO search);
	
	//  커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo);
	
	// 게시글 수정(업데이트)
	void updatewrite(CmuVO cmuvo) throws Exception;

	// 게시글 삭제
	void deletewrite(CmuVO cmuvo) throws Exception;
	
	// 댓글 총 갯수
	public int cmu_replycount(CmuVO cmuvo);
	
	// 댓글 저장
	public void cmu_commentsave(CmuVO cmuvo);
	
	// 댓글 리스트
	public List<?> cmu_commentlist(CmuVO cmuvo);
	
	// 댓글 삭제
	public int cmu_commentdelete(CmuVO cmuvo);
	
	// 댓글 수정
	public int cmu_commentupdate(CmuVO cmuvo);
	
	// ajax_category
	public List<CmuVO> cmu_readlist_ajax(CmuVO cmuvo);

	// 커뮤니티 게시글 신고하기
	public void cmu_report_insert(CmuVO cmuvo);

	// cmu 테이블의 cmu_report 컬럼의 값에 1이라는 값을 삽입 
	public void cmu_report_columm_add(CmuVO cmuvo);
	
    // 커뮤니티 게시글 신고 중복 체크
	public int cmu_report_check(CmuVO cmuvo);
	
}
