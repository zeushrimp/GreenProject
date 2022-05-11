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
		mybatis.insert("Cmu.insert_cmu",cmuvo);
	}
	
	// 총 게시글 수 카운트 
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
	
	// 총 댓글 수 카운트 
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
		return mybatis.update("delete_comment", cmuvo);
	}
	
	// 댓글 수정
	@Override
	public int cmu_commentupdate(CmuVO cmuvo) {
		return mybatis.update("update_comment", cmuvo);
	}
	
	// ajax_category
	@Override
	public List<CmuVO> cmu_readlist_ajax(CmuVO cmuvo) {
		return mybatis.selectList("Cmu.get_readlist_ajax",cmuvo);
	}

	// 커뮤니티 게시글 신고하기
	@Override
	public void cmu_report_insert(CmuVO cmuvo) {
		mybatis.insert("Cmu.cmu_report_insert", cmuvo);
		
	}

	// cmu 테이블의 cmu_report 컬럼의 값에 1이라는 값을 삽입 
	@Override
	public void cmu_report_columm_add(CmuVO cmuvo) {
		mybatis.update("Cmu.cmu_report_columm_add", cmuvo);
		
	}
	

    // 커뮤니티 게시글 신고 중복 체크를 위해 0,1 판별
	@Override
	public int cmu_report_check(CmuVO cmuvo) {
		return mybatis.selectOne("Cmu.cmu_report_check", cmuvo);
	}
	
	
	
}
