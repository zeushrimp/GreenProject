package com.human.java.CmuService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuDAO.CmuDao;
import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;

@Service("CmuSer")
public class CmuSerImpl implements CmuSer{
	
	@Autowired
	private CmuDao cmudao;
	
	// 글 등록 버튼
	@Override
	public void cmu_write(CmuVO cmuvo) {
		// TODO Auto-generated method stub
		cmudao.cmu_write(cmuvo);
	}
	
	// 총 갯수 카운트 
	@Override
	public int cmulistcnt() {
		return cmudao.cmulistcnt();
	}
	
	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmugetlist(CmupageVO cmupagevo) {
		return cmudao.cmugetlist(cmupagevo);
	}

	//  커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo){
		return cmudao.cmu_detailread(cmuvo);
	}
	
		
}
