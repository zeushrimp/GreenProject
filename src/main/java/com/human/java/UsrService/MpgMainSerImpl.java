package com.human.java.UsrService;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.UsrDAO.MpgMainDao;
import com.human.java.UsrVO.UsrVO;

@Service("MpgMainSer")
public class MpgMainSerImpl implements MpgMainSer {
	
@Inject
MpgMainDao mpgmaindao;	

@Override
public String mpglogincheck(UsrVO vo, HttpSession session) {
String name = mpgmaindao.mpglogincheck(vo);
 if (name != null) { // 세션 변수 저장
  session.setAttribute("userid", vo.getUSR_ID());
  session.setAttribute("name", name);
}
 return name; 
}

}
