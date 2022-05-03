package com.human.java.CmuService;

import java.util.List;
import java.util.Map;

import com.human.java.CmuVO.CmuVO;

public interface CmuSer {
	
	// 글 등록하기
	void cmu_write(CmuVO cmuvo);
	
	// 총 게시글 수 카운트 
	public int cmu_listcnt(CmuVO search);
	
	// 글 리스트 불러오기
	public List<CmuVO> cmu_getlist(CmuVO search);
	
	// 커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo);
	
    // 게시글 수정(업데이트)
	public void updatewrite(CmuVO cmuvo) throws Exception;

	// 게시글 삭제
	public void deletewrite(CmuVO cmuvo) throws Exception;
	
	// 댓글 수 카운트 
	public int cmu_replycount(CmuVO cmuvo);
	
	// 댓글 저장
    public void cmu_commentsave(CmuVO cmuvo);
    
    // 댓글 리스트
    public List<?> cmu_commentlist(CmuVO cmuvo);
    
    // 댓글 삭제
    public int cmu_commentdelete(CmuVO cmuvo);


}
