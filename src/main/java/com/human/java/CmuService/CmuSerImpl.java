package com.human.java.CmuService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuDAO.CmuDao;
import com.human.java.CmuVO.CmuVO;

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
	
	// 글 목록 불러오기
	@Override
	public int cum_readlistcnt(CmuVO cmuvo) {
		return cmudao.cum_readlistcnt(cmuvo);
	}

	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmugetList(CmuVO cmuvo) {
		return cmudao.cmugetList(cmuvo);
	}
		
}
