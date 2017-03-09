package com.kms.home.setting.service;

import com.kms.home.common.dto.PlayerDTO;

public interface SettingService {

	/**
	 * 사용자 프로필 조회
	 * */
	public PlayerDTO setting(int playSq) throws Exception;
	
	/**
	 * 사용자 프로필 수정
	 * */
	public void profileUpdate(PlayerDTO dto) throws Exception;
}
