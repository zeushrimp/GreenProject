package com.human.java.CmuDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;


public interface CmuDao {
	
	// 글 작성
	void cmu_write(CmuVO cmuvo);
	
	// 글 목록 리스트 불러오기 (페이징)
	public List<CmuVO> cmu_getlist(CmupageVO cmupagevo);
	
	// 개시물 총 갯수
	public int cmu_listcnt();
	
	//  커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo);
	
	// 댓글 저장
	public void cmu_commentsave(CmuVO cmuvo);
	
	// 댓글 리스트
	public List<?> cmu_commentlist(CmuVO cmuvo);
	
	// 댓글 삭제
	public int cmu_commentdelete(CmuVO cmuvo);
}
