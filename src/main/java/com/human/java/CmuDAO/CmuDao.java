package com.human.java.CmuDAO;

import java.util.List;

import com.human.java.CmuVO.CmuVO;

public interface CmuDao {
	
	// 글 작성
	void cmu_write(CmuVO cmuvo);

	// 글 목록 불러오기
	List<CmuVO> cum_readlist();
}
