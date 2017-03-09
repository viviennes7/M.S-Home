package com.kms.home.setting.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kms.home.common.dto.PlayerDTO;
import com.kms.home.setting.dao.SettingDao;

@Service("settingService")
public class SettingServiceImpl implements SettingService {

	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * 사용자 프로필 조회
	 * */
	public PlayerDTO setting(int playSq) throws Exception  {
		SettingDao dao = sqlSession.getMapper(SettingDao.class);
		return dao.setting(playSq);
	}
	
	/**
	 * 사용자 프로필 수정
	 * */
	public void profileUpdate(PlayerDTO dto) throws Exception {
		SettingDao dao = sqlSession.getMapper(SettingDao.class);
		dao.profileUpdate(dto);
	}

}
