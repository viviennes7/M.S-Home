package com.kms.home.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	public String join(PlayerDTO dto) throws Exception {
		/*dto.setPassword(BCrypt.hashpw(dto.getPassword(), BCrypt.gensalt(12)));*/
		MSDao dao=sqlSession.getMapper(MSDao.class);
		int result = dao.join(dto);
		return null;
	}
	
	/**
	 * ID 유효성 체크
	 * */
	public String idCheck(String loginId) throws Exception  {
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
	public int login(String username, String userpass) throws Exception {
		
		//비밀번호 암호화 추가하기
		
		/*userpass = BCrypt.hashpw(userpass, BCrypt.gensalt(12));*/
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
	public PlayerDTO setting(int playSq) throws Exception  {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.setting(playSq);
	}
	
	/**
	 * 사용자 프로필 수정
	 * */
	public void profileUpdate(PlayerDTO dto) throws Exception {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.profileUpdate(dto);
	}

	/**
	 * 프로필 사진 업로드
	 * 
	 * flag == 1 프로필사진
	 * flag == 2 배경사진
	 * */
	@ResponseBody
	public void profileImgUpdate(HttpServletRequest request,int flag)throws Exception{
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(request,"settingImg");
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
	public String profileImgSelect(int playSq,int flag) throws Exception  {
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
	public VisitorDTO visitorInsert(VisitorDTO visitor) throws Exception  {
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
	public List<VisitorDTO> visitorSelect(int page) throws Exception  {
		Map<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", page*4-3);
		map.put("end", page*4);

		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.visitorSelect(map);
		
	}
	
	/**
	 * 방명록 삭제
	 * */
	public void visitorDel(int visitorSq) throws Exception  {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.visitorDel(visitorSq);
	}
	
	
	/**
	 * 포트폴리오 조회
	 * */
	public List<PortfolioDTO> portfolio() throws Exception  {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.portfolio();
	}
	
	
	/**
	 * 포트폴리오 저장
	 * @throws Exception 
	 * */
	public void portfolioSave(HttpServletRequest request, MultipartHttpServletRequest multi) throws Exception {
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(request,"portFolioRead");
		
		String img = list.get(0).get("STORED_FILE_NAME").toString();
		String imgOrigin = list.get(0).get("ORIGINAL_FILE_NAME").toString();
		String file = list.get(1).get("STORED_FILE_NAME").toString();
		String fileOrigin = list.get(1).get("ORIGINAL_FILE_NAME").toString();
		
		//파일들은 null이면 안들어가서 꼼수썻는데 고쳐야돼!
		if(file==null) file="null";
		
		PortfolioDTO dto = new PortfolioDTO(multi.getParameter("subject"), multi.getParameter("strapline1"), 
		multi.getParameter("strapline2"), multi.getParameter("strapline3"), multi.getParameter("strapline4"), 
		multi.getParameter("strapline5"), multi.getParameter("content"), img, file,fileOrigin);
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.portfolioSave(dto);
	}
	
	/**
	 * 포트폴리오 상세보기
	 * */
	public PortfolioDTO portfolioRead(int portfolioSq) throws Exception  {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		return dao.portfolioRead(portfolioSq);
	}
	
	/**
	 * 포트폴리오 삭제
	 * */
	public void portfolioDelete(int portfolioSq) {
		MSDao dao = sqlSession.getMapper(MSDao.class);
		dao.portfolioDelete(portfolioSq);
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
