package com.jsp.service;

import java.sql.SQLException;

import com.jsp.dao.IMemberDao;
import com.jsp.dao.MemberDaoImpl;
import com.jsp.dto.MemberVO;

public class MemberServiceImpl implements IMemberService {

	private static IMemberService memService;
	private IMemberDao dao;
	
	private MemberServiceImpl() {
		dao = MemberDaoImpl.getInstance();
	}
	
	public static IMemberService getInstance() {
		if(memService == null) {
			memService = new MemberServiceImpl();
		}
		return memService;
	}
	
	@Override
	public int loginCheck(MemberVO mv) {
		int chk = 0;
		
		try {
			chk = dao.loginCheck(mv);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return chk;
	}

}
