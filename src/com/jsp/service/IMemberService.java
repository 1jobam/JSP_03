package com.jsp.service;

import com.jsp.dto.MemberVO;

public interface IMemberService {
	
	//로그인 체크
	public int loginCheck(MemberVO mv);

}
