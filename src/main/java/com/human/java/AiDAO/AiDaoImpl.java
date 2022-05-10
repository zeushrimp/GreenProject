package com.human.java.AiDAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.java.RcpVO.RcpVO;

@Repository("Ai")
public class AiDaoImpl implements AiDao {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<RcpVO> Ai_recipe(RcpVO rcpvo) {
		return sqlSession.selectList("Ai.Ai_recipe",rcpvo);
	}

	@Override
	public String countrcp() {
		
		return sqlSession.selectOne("Ai.countrcp");
	}

	

}
