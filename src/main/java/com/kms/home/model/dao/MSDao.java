package com.kms.home.model.dao;

import java.util.Map;

import com.kms.home.model.dto.PlayerDTO;
public interface MSDao {
	/**
	 * 회원가입
	 * */
	public int join(PlayerDTO dto);
	
	/**
	 * 로그인
	 * */
	public PlayerDTO login(PlayerDTO dto);
	
	/**
	 * 사용자정보 조회
	 * */
	public PlayerDTO setting(int playSq);
	
	/**
	 * 사용자정보 수정
	 * */
	public int profileUpdate(PlayerDTO dto);
	
	/**
	 * 프로필사진 수정
	 * */
	public int profileImgUpdate(Map<String, Object> map);
	
	/**
	 * 프로필사진 조회
	 * */
	public String profileImgSelect(int playSq);
	
	/**
	 * 배경사진 수정
	 * */
	public int backgroundImgUpdate(Map<String, Object> map);
	
	/**
	 * 배경사진 조회
	 * */
	public String backgroundImgSelect(int playSq);
	
	
	
	
	public int lifePost();
}
