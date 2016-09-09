package com.kms.home.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kms.home.model.dao.MSDao;
import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.model.dto.PortfolioDTO;
import com.kms.home.model.dto.VisitorDTO;
import com.kms.home.util.FileUtils;
@Service
public class MSService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private FileUtils fileUtils;
	
	
	/**
	 * 회원가입
	 * (result에 따라 리턴 깔끔하게 다시 할 것.)
	 * */
	public String join(PlayerDTO dto){
		MSDao dao=sqlSession.getMapper(MSDao.class);
		int result = dao.join(dto);
		return null;
	}
	
	/**
	 * ID 유효성 체크
	 * */
	public String idCheck(String loginId) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		if(dao.idCheck(loginId)==null){
			return "success";
		}else{
			return "fail";
		}
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
	 * 프로필or배경 사진 조회
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
	 * 방명록 쓰기
	 * */
	public VisitorDTO visitorInsert(VisitorDTO visitor) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		if(dao.visitorInsert(visitor)==1){
			return dao.visitorSelectOne();
		}else{
			return null;
		}
	}
	
	/**
	 * 방명록조회
	 * */
	public List<VisitorDTO> visitorSelect(int page) {
		Map<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", page*4-3);
		map.put("end", page*4);

		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.visitorSelect(map);
		
	}
	
	/**
	 * 방명록 삭제
	 * */
	public void visitorDel(int visitorSq) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.visitorDel(visitorSq);
	}
	
	
	/**
	 * 포트폴리오 조회
	 * */
	public List<PortfolioDTO> portfolio() {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.portfolio();
	}
	
	
	/**
	 * 포트폴리오 저장
	 * */
	public void portfolioSave(PortfolioDTO dto) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.portfolioSave(dto);
	}
	
	/**
	 * 포트폴리오 상세보기
	 * */
	public PortfolioDTO portfolioRead(int protfolioSq) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.portfolioRead(protfolioSq);
	}
	
	
	/**
	 * Life 글쓰기
	 * @throws Exception 
	 * */
	public void imageUpload(Map<String, Object> map, HttpServletRequest request) throws Exception {
		 /*List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
		 System.out.println("출발!");
		 for(Map<String,Object> maps:list){
			 System.out.println("이름 : " + maps.get("ORIGINAL_FILE_NAME"));
		 }*/
		 
	}
	
	

	



	
	
	
}
