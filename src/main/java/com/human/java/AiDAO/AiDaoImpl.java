package com.human.java.AiDAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("Ai")
public class AiDaoImpl implements AiDao {

	@Inject
	SqlSession sqlSession;

	

}
