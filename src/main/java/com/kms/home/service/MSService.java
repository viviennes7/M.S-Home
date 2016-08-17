package com.kms.home.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kms.home.model.dao.MSDao;
import com.kms.home.model.dto.PlayerDTO;
@Service
public class MSService {
	
	@Autowired
	private SqlSession sqlSession;
	
	public String join(PlayerDTO dto){
		MSDao dao=sqlSession.getMapper(MSDao.class);
		int result = dao.join(dto);
		System.out.println("서비스 : " + result);
		return null;
	}
}
