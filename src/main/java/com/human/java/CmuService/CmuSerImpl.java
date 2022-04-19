package com.human.java.CmuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuDAO.CmuDao;

@Service("CmuSer")
public class CmuSerImpl implements CmuSer{
	@Autowired
	private CmuDao cmudao;
}
