package com.kms.home.portfolio.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kms.home.common.util.FileUtils;
import com.kms.home.portfolio.dao.PortfolioDao;
import com.kms.home.portfolio.dto.PortfolioDTO;

@Service("portfolioService")
public class PortfolioServiceImpl implements PortfolioService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private FileUtils fileUtils;
	
	/**
	 * 포트폴리오 조회
	 * */
	public List<PortfolioDTO> portfolio() throws Exception  {
		PortfolioDao dao = sqlSession.getMapper(PortfolioDao.class);
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
		PortfolioDao dao = sqlSession.getMapper(PortfolioDao.class);
		dao.portfolioSave(dto);
	}
	
	/**
	 * 포트폴리오 상세보기
	 * */
	public PortfolioDTO portfolioRead(int portfolioSq) throws Exception  {
		PortfolioDao dao = sqlSession.getMapper(PortfolioDao.class);
		return dao.portfolioRead(portfolioSq);
	}
	
	/**
	 * 포트폴리오 삭제
	 * */
	public void portfolioDelete(int portfolioSq) {
		PortfolioDao dao = sqlSession.getMapper(PortfolioDao.class);
		dao.portfolioDelete(portfolioSq);
	}

}
