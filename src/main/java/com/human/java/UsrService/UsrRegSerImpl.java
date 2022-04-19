package com.human.java.UsrService;
import com.human.java.UsrVO.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.UsrDAO.*;

@Service("UsrRegSer")
public class UsrRegSerImpl implements UsrRegSer{
		@Autowired
		private UsrRegDao usrregdao;
		
		public int checkId(UsrVO vo) {
			
			return usrregdao.checkId(vo);
		}

		@Override
		public UsrVO Usr_Login(UsrVO vo) {
			// TODO Auto-generated method stub
			return usrregdao.Usr_Login(vo);
		};
		
}
