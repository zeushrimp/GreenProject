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
	
	// 총 갯수 카운트 
	@Override
	public int cmulistcnt() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Cmu.count_list");
	}
	
	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmugetlist(CmupageVO cmupagevo) {
		return mybatis.selectList("Cmu.get_cmulist",cmupagevo);
	}

	//  커뮤니티 상세보기
	@Override
	public List<CmuVO> cmu_detailread(CmuVO cmuvo) {
		return mybatis.selectList("Cmu.get_detailread",cmuvo);
	}	
	
}
