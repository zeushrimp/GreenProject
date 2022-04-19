package com.human.java.RcpService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.RcpDAO.RcpDao;

@Service("RcpSer")
public class RcpSerImpl implements RcpSer{
	
	@Autowired
	private RcpDao rcpdao;
}
