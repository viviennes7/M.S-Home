package com.kms.home.service;

import org.apache.ibatis.jdbc.Null;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kms.home.model.dao.MSDao;
import com.kms.home.model.dto.PlayerDTO;
@Service
public class MSService {
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * 회원가입
	 * */
	public String join(PlayerDTO dto){
		MSDao dao=sqlSession.getMapper(MSDao.class);
		int result = dao.join(dto);
		System.out.println("서비스 : " + result);
		return null;
	}
	
	/**
	 * 로그인
	 * */
	public String login(String username, String userpass){
		MSDao dao=sqlSession.getMapper(MSDao.class);
		PlayerDTO playerDTO = dao.login(new PlayerDTO(username, userpass));
		if(playerDTO==null){
			return "fail";
		}else{
			return "success";
		}
	}
	
}
