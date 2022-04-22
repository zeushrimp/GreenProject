package com.human.java.UsrService;
import com.human.java.UsrVO.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.UsrDAO.*;

@Service("UsrRegSer")
public class UsrRegSerImpl implements UsrRegSer{
		@Autowired
		private UsrRegDao usrregdao;
		
		public int checkId(UsrVO usrvo) {
			
			return usrregdao.checkId(usrvo);
		}

		@Override
		public UsrVO Usr_Login(UsrVO usrvo) {
			// TODO Auto-generated method stub
			return usrregdao.Usr_Login(usrvo);
		}

		@Override
		public void insertUsr(UsrVO usrvo) {
			usrregdao.insertUsr(usrvo);
			
		}

		@Override
		public String FindId(UsrVO usrvo) {
			
			return usrregdao.FindId(usrvo);
		}

		@Override
		public String FindPw(UsrVO usrvo) {
			// TODO Auto-generated method stub
			return usrregdao.FindPw(usrvo);
		};
		
}
