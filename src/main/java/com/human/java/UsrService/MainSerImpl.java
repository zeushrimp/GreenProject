package com.human.java.UsrService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.CmuVO.CmuVO;
import com.human.java.UsrDAO.MainDao;

@Service("MainSer")
public class MainSerImpl implements MainSer{
	
	@Autowired
	private MainDao MainDao;
	@Override
	public List<CmuVO> showMainCmu() {
		// TODO Auto-generated method stub
		return MainDao.showMainCmu();
	}

	
}
