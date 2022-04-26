package com.human.java.CmuService;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;

public interface CmuSer {
	
	// 글 등록하기
	void cmu_write(CmuVO cmuvo);
	
	// 총 갯수 카운트 
	public int cmu_listcnt();
	
	// 글 리스트 불러오기
	public List<CmuVO> cmu_getlist(CmupageVO cmupagevo);
	
	// 커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo);
	
	// 댓글 저장
    public void cmu_commentsave(CmuVO cmuvo);
    
    // 댓글 리스트
    public List<?> cmu_commentlist(CmuVO cmuvo);
    
    // 댓글 삭제
    public int cmu_commentdelete(CmuVO cmuvo);
}
