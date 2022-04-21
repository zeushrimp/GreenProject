package com.human.java.CmuService;

import java.util.List;

import com.human.java.CmuVO.CmuVO;

public interface CmuSer {
	
	// 글 등록하기
	void cmu_write(CmuVO cmuvo);
	
	// 글 리스트 불러오기
	public List<CmuVO> cmugetList(CmuVO cmuvo);
	
	// 커뮤니티 페이징
	int cum_readlistcnt(CmuVO cmuvo);
}
