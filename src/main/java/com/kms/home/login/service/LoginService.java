package com.kms.home.login.service;

import com.kms.home.common.dto.PlayerDTO;

public interface LoginService {
	/**
	 * 회원가입
	 * (result에 따라 리턴 깔끔하게 다시 할 것.)
	 * */
	public String join(PlayerDTO dto) throws Exception;
	
	/**
	 * ID 유효성 체크
	 * */
	public String idCheck(String loginId) throws Exception;
	
	/**
	 * 로그인
	 * */
	public int login(String username, String userpass) throws Exception;
}
