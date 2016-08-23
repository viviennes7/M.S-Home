package com.kms.home.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kms.home.model.dao.MSDao;
import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.util.FileUtils;
@Service
public class MSService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private FileUtils fileUtils;
	
	
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
	public int login(String username, String userpass){
		MSDao dao=sqlSession.getMapper(MSDao.class);
		PlayerDTO playerDTO = dao.login(new PlayerDTO(username, userpass));
		if(playerDTO==null){
			return -1;
		}else{
			return playerDTO.getPlaySq();
		}
	}
	/**
	 * 사용자 프로필 조회
	 * */
	public PlayerDTO setting(int playSq) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.setting(playSq);
	}
	
	/**
	 * 사용자 프로필 수정
	 * */
	public void profileUpdate(PlayerDTO dto){
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.profileUpdate(dto);
	}

	/**
	 * Post버튼 클릭
	 * (SQ)
	 * */
	@ResponseBody
	public int lifePost(){
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.lifePost();
	}
	
	
	/**
	 * life 사진 업로드
	 * */
	@ResponseBody
	public void imageUpload(Map<String, Object> map, HttpServletRequest request,int sq)throws Exception{
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
			
	}
	
}
