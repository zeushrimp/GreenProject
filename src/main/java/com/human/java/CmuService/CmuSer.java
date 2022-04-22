package com.human.java.CmuService;

import java.util.List;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;

public interface CmuSer {
	
	// 글 등록하기
	void cmu_write(CmuVO cmuvo);
	
	// 총 갯수 카운트 
	public int cmulistcnt();
	
	// 글 리스트 불러오기
	public List<CmuVO> cmugetlist(CmupageVO cmupagevo);
	
	// 커뮤니티 상세보기
	public List<CmuVO> cmu_detailread(CmuVO cmuvo);
}
