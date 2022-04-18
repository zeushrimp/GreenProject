package com.human.java.UsrService;
import com.human.java.UsrVO.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.UsrDAO.*;

@Service("UsrRegSer")
public class UsrRegSerImpl implements UsrRegSer{
		@Autowired
		private UsrRegDao usrregdao;
		
		

}
