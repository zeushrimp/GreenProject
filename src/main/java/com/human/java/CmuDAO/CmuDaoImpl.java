package com.human.java.CmuDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;

@Repository("CmuDao")
public class CmuDaoImpl implements CmuDao{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 글 등록 버튼
	@Override
	public void cmu_write(CmuVO cmuvo) {
		// TODO Auto-generated method stub
		mybatis.insert("Cmu.insert_cmu",cmuvo);
	}
	
	// 글 리스트
	@Override
	public List<CmuVO> cmugetList(CmuVO cmuvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Cmu.get_cmuList",cmuvo);
	}
	
	// 글 페이징
	@Override
	public int cum_readlistcnt(CmuVO cmuvo) {
		// TODO Auto-generated method stub
		return mybatis.insert("Cmu.insert_cmu",cmuvo);
	}

	
	
}
