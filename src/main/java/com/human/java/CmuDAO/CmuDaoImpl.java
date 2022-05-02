package com.human.java.CmuDAO;

import java.util.List;
import java.util.Map;

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
		mybatis.insert("Cmu.insert_cmu",cmuvo);
	}
	
	// 게시글 총 갯수 카운트 
	@Override
	public int cmu_listcnt(CmuVO search) {
		return mybatis.selectOne("Cmu.count_list",search);
	}
	
	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmu_getlist(CmuVO search) {
		return mybatis.selectList("Cmu.get_cmulist",search);
	}

	// 커뮤니티 상세보기
	@Override
	public CmuVO cmu_detailread(CmuVO cmuvo) {
		return mybatis.selectOne("Cmu.get_detailread",cmuvo);
	}
	
	// 게시글 총 갯수 카운트 
	@Override
	public int cmu_replycount(CmuVO cmuvo) {
		return mybatis.selectOne("Cmu.count_reply",cmuvo);
	}
	
	// 댓글 저장
	@Override
	public void cmu_commentsave(CmuVO cmuvo) {		
        if (cmuvo.getCCM_PK() == 0) {
        	mybatis.insert("Cmu.insert_comment", cmuvo);
        } else {
        	mybatis.insert("Cmu.update_comment", cmuvo);
        }
	}
	
	// 댓글 리스트
	@Override
	public List<?> cmu_commentlist(CmuVO cmuvo) {
		return mybatis.selectList("Cmu.get_commentlist",cmuvo);
	}
	
	// 댓글 삭제
	@Override
	public int cmu_commentdelete(CmuVO cmuvo) {
		return mybatis.update("Cmu.delete_comment", cmuvo);
	}

	// 게시글 수정(업데이트)
	@Override
	public void updatewrite(CmuVO cmuvo) throws Exception {
		 mybatis.update("Cmu.update_write", cmuvo);		
	}
	
	// 게시글 삭제
	@Override
	public void deletewrite(CmuVO cmuvo) throws Exception {
		mybatis.delete("Cmu.delete_write", cmuvo);		
	}

}
