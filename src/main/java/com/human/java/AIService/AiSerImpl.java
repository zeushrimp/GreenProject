package com.human.java.AIService;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.java.AiDAO.AiDao;

@Service("AiSer")
public class AiSerImpl implements AiSer {

	@Inject
	AiDao aiDao;
}
