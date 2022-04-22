package com.human.java.CmuDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;

@Repository("CmuDao")
public class CmuDaoImpl implements CmuDao{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 글 등록 버튼
	@Override
	public void cmu_write(CmuVO cmuvo) {
		mybatis.insert("Cmu.insert_cmu",cmuvo);
	}
	
	// 글 리스트
	@Override
	public List<CmuVO> cmugetlist(CmupageVO cmupagevo) {
		return mybatis.selectList("Cmu.get_cmulist",cmupagevo);
	}
	
	// 글 페이징
	@Override
	public int cum_readlistcnt(CmuVO cmuvo) {
		return mybatis.insert("Cmu.insert_cmu",cmuvo);
	}

	@Override
	public int cmulistcnt() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Cmu.count_list");
	}

	
	
}
