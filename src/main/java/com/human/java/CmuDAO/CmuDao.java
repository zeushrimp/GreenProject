package com.human.java.CmuDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;
import com.human.java.CmuVO.CmureplVO;

public interface CmuDao {
	
	// 글 작성
	void cmu_write(CmuVO cmuvo);
	
	// 글 목록 리스트 불러오기 (페이징)
	public List<CmuVO> cmugetlist(CmupageVO cmupagevo);
	
	// 개시물 총 갯수
	public int cmulistcnt();
	
	//  커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo);
	
	// 댓글 쓰기
	public void cmu_comentsave(CmureplVO cmureplvo);
}
