package com.human.java.AdmService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.AdmDAO.AdmDao;
import com.human.java.UsrVO.UsrVO;

@Service("AdmSer")
public class AdmSerImpl implements AdmSer{
	
	@Autowired
	private AdmDao admdao;

	@Override
	public List<UsrVO> showAllusr() {
		// TODO Auto-generated method stub
		return admdao.showAllusr();
	}

	@Override
	public void changeUsrInfo(UsrVO usrvo) {
		admdao.changeUsrInfo(usrvo);
		
	}

	// 회원 정보 삭제
	@Override
	public void delete_usr_info(UsrVO usrvo) {
		admdao.delete_usr_info(usrvo);
		
	}
	
}
