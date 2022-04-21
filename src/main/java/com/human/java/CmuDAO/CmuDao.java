package com.human.java.CmuDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;

public interface CmuDao {
	
	// 글 작성
	void cmu_write(CmuVO cmuvo);
	
	// 글 목록 리스트 불러오기 
	public List<CmuVO> cmugetList(CmuVO cmuvo);
	
	// 글 페이징
	public int cum_readlistcnt(CmuVO cmuvo);
}
