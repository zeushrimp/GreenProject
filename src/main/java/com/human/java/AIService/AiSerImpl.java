package com.human.java.AIService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.java.AiDAO.AiDao;
import com.human.java.RcpVO.RcpVO;

@Service("AiSer")
public class AiSerImpl implements AiSer {

	@Inject
	AiDao aiDao;

	@Override
	public List<RcpVO> Ai_recipe(RcpVO rcpvo) {
		return aiDao.Ai_recipe(rcpvo);
		

	}

	@Override
	public String countrcp() {
		// TODO Auto-generated method stub
		return aiDao.countrcp();
	}
}
