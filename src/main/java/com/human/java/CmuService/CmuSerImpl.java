package com.human.java.CmuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuDAO.CmuDao;
import com.human.java.CmuVO.CmuVO;

@Service("CmuSer")
public class CmuSerImpl implements CmuSer{
	
	@Autowired
	private CmuDao cmudao;
	
	// 글 작성
	@Override
	public void cmu_write(CmuVO cmuvo) {
		// TODO Auto-generated method stub
		cmudao.cmu_write(cmuvo);
	}
	
	
}
