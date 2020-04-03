package com.jsp.dao;

import java.sql.SQLException;

import com.jsp.dto.MemberVO;

public interface IMemberDao {
	
	//로그인 체크
	public int loginCheck(MemberVO mv) throws SQLException;

}
