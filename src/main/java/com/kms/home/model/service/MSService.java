package com.kms.home.model.service;

import java.util.LinkedHashSet;
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
	 * 프로필 사진 업로드
	 * */
	@ResponseBody
	public void profileImgUpdate(Map<String, Object> map, HttpServletRequest request,int flag)throws Exception{
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
		MSDao dao = sqlSession.getMapper(MSDao.class);
		list.get(0).put("playSq", request.getSession().getAttribute("player"));
		if(flag==1){
			dao.profileImgUpdate(list.get(0));
		}else{
			dao.backgroundImgUpdate(list.get(0));
		}
	}
	
	
	/**
	 * 프로필 사진 조회
	 * */
	public String profileImgSelect(int playSq,int flag) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		if(flag==1){
			return dao.profileImgSelect(playSq);
		}else{
			return dao.backgroundImgSelect(playSq);
		}
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

	
	
	
}