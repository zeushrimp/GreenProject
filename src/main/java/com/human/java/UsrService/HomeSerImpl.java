package com.human.java.UsrService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuVO.CmuVO;
import com.human.java.UsrDAO.HomeDao;

@Service("HomeSer")
public class HomeSerImpl implements HomeSer{

	@Autowired
	private HomeDao homedao;

	@Override
	public List<CmuVO> newcmu() {
		// TODO Auto-generated method stub
		return homedao.newcmu();
	}
	
	
}
