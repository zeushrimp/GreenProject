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
		cmudao.cmu_write(cmuvo);
	}
	
	// 총 갯수 카운트 
	@Override
	public int cmu_listcnt() {
		return cmudao.cmu_listcnt();
	}
	
	// 글 목록 리스트 불러오기
	@Override
	public List<CmuVO> cmu_getlist(CmupageVO cmupagevo) {
		return cmudao.cmu_getlist(cmupagevo);
	}

	// 커뮤니티 상세보기
	public CmuVO cmu_detailread(CmuVO cmuvo){
		return cmudao.cmu_detailread(cmuvo);
	}

	// 댓글 저장 (작성)
	public void cmu_commentsave(CmuVO cmuvo) {
		cmudao.cmu_commentsave(cmuvo);
	}
	
	// 댓글 리스트 (댓글 불러오기)
	public List<?> cmu_commentlist(CmuVO cmuvo) {
		return cmudao.cmu_commentlist(cmuvo);
}
	
	// 댓글 삭제
	public int cmu_commentdelete(CmuVO cmuvo) {
		return cmudao.cmu_commentdelete(cmuvo);
	}

		
}
