package com.human.java.CmuDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;

public interface CmuDao {
	
	// 글 작성
	void cmu_write(CmuVO cmuvo);
	
	// 글 목록 리스트 불러오기 
	public List<CmuVO> cmugetlist(CmupageVO cmupagevo);
	
	// 글 페이징
	public int cum_readlistcnt(CmuVO cmuvo);
	
	// 개시물 총 갯수
	public int cmulistcnt();
}
