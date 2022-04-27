package com.human.java.AdmDAO;

import java.util.List;
import com.human.java.UsrVO.UsrVO;

public interface AdmDao {
	public List<UsrVO> showAllusr();
	public void changeUsrInfo(UsrVO usrvo);
}
