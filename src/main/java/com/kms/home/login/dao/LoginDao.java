package com.kms.home.login.dao;

import org.springframework.stereotype.Repository;

import com.kms.home.common.dto.PlayerDTO;

@Repository
public interface LoginDao {
	/**
	 * 회원가입
	 * */
	public int join(PlayerDTO dto);
	
	/**
	 * 로그인
	 * */
	public PlayerDTO login(PlayerDTO dto);
	
	/**
	 * ID유효성 체크
	 * */
	public PlayerDTO idCheck(String loginId);
}
