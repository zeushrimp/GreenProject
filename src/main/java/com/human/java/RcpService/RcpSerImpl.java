package com.human.java.RcpService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.RcpDAO.RcpDao;
import com.human.java.RcpVO.RcpListVO;
import com.human.java.RcpVO.RcpVO;

@Service("RcpSer")
public class RcpSerImpl implements RcpSer{
	
	@Autowired
	private RcpDao rcpdao;

	@Override
	public void insertRcp(RcpVO rcpvo) {
//		System.out.println("안녕 Ser");
		rcpdao.insertRcp(rcpvo);
	}

	@Override
	public void insertRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.insertRcp_cont(rcpvo);
	}

	@Override
	public void insertRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.insertRcp_reso(rcpvo);
	}
	
	@Override
	public int countRcp() {
//		System.out.println("안녕 Ser1");
//		System.out.println(rcpdao.countRcp());
//		System.out.println("안녕 Ser1-1");
		return rcpdao.countRcp();
	}

	@Override
	public List<RcpVO> selectRcp(RcpListVO rcplistvo) {
//		System.out.println("안녕 Ser2");
//		System.out.println(rcpdao.selectRcp(rcplistvo));
		return rcpdao.selectRcp(rcplistvo);
	}

	@Override
	public int getPK() {
		// TODO Auto-generated method stub
		return rcpdao.getPK();
	}

	@Override
	public RcpVO detailRcp(RcpVO rcpvo) {
//		System.out.println("안녕 Ser2");
//		System.out.println(rcpdao.detailRcp(rcpvo));
		return rcpdao.detailRcp(rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_reso(RcpVO rcpvo) {
//		System.out.println("안녕 Ser2");
		return rcpdao.detailRcp_reso(rcpvo);
	}

	@Override
	public List<RcpVO> detailRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return rcpdao.detailRcp_cont(rcpvo);
	}

	@Override
	public void delcheck(RcpVO rcpvo) {
		// TODO Auto-generated method stub
//		System.out.println("안녕 Ser2");
		rcpdao.delcheck(rcpvo);
	}
	
	@Override
	public void delcheck_CONT(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.delcheck_CONT(rcpvo);
	}
	
	@Override
	public void delcheck_RESO(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.delcheck_RESO(rcpvo);
	}

	@Override
	public void rewriteRcp(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		System.out.println(rcpvo);
		rcpdao.rewriteRcp(rcpvo);
	}

	@Override
	public void rewriteRcp_cont(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		System.out.println(rcpvo);
		rcpdao.rewriteRcp_cont(rcpvo);
	}

	@Override
	public void rewriteRcp_reso(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		System.out.println(rcpvo);
		rcpdao.rewriteRcp_reso(rcpvo);
	}

	@Override
	public void viewsCountRcp(int RCP_HIT) {
		// TODO Auto-generated method stub
		rcpdao.viewsCountRcp(RCP_HIT);
	}

	@Override
	public void input_scrap(RcpVO rcpvo) {
		rcpdao.input_scrap(rcpvo);
		
	}

	@Override
	public RcpVO ch_scrap_detail(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		return rcpdao.ch_scrap_detail(rcpvo);
	}

	@Override
	public void cancel_scrap(RcpVO rcpvo) {
		// TODO Auto-generated method stub
		rcpdao.cancel_scrap(rcpvo);
	}
	
	
	
	
}
