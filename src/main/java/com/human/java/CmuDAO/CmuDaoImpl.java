package com.human.java.CmuDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;
import com.human.java.CmuVO.CmureplVO;

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
	public int cmu_listcnt() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Cmu.count_list");
	}
	
	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmu_getlist(CmupageVO cmupagevo) {
		return mybatis.selectList("Cmu.get_cmulist",cmupagevo);
	}

	//  커뮤니티 상세보기
	@Override
	public CmuVO cmu_detailread(CmuVO cmuvo) {
		return mybatis.selectOne("Cmu.get_detailread",cmuvo);
	}
	
	// 댓글 저장
	@Override
	public void cmu_comentsave(CmureplVO cmureplvo) {		
        if (cmureplvo.getCCM_PK() == 0) {
        	mybatis.insert("Cmu.cmu_comentinsert", cmureplvo);
        } else {
        	mybatis.insert("Cmu.cmu_comentupdate", cmureplvo);
        }
	}
	
	// 댓글 리스트
	@Override
	public List<?> cmu_comentlist(String cmuparam) {
		return mybatis.selectList("Cmu.get_comentlist",cmuparam);
	}	
	
	
}
