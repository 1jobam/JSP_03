package com.jsp.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.jsp.dto.MemberVO;
import com.jsp.ibatis.config.SqlMapClientFactory;

public class MemberDaoImpl implements IMemberDao {
	
	private SqlMapClient smc;
	private static IMemberDao dao;
	
	private MemberDaoImpl() {
		smc = SqlMapClientFactory.getSMClient();
	}
	
	public static IMemberDao getInstance() {
		if(dao == null) {
			dao = new MemberDaoImpl();
		}
		return dao;
	}

	/**
	 * 로그인 체크
	 */
	@Override
	public int loginCheck(MemberVO mv) throws SQLException {
		int chk = 0;
		
		chk = (int) smc.queryForObject("member.loginCheck",mv);
		
		return chk;
	}

}
