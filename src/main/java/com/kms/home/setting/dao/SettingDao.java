package com.kms.home.setting.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kms.home.common.dto.PlayerDTO;

@Repository
public interface SettingDao {
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
}
