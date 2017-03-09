package com.kms.home.portfolio.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kms.home.common.util.FileUtils;
import com.kms.home.portfolio.service.PortfolioService;

@Controller
public class PortfolioController {
	
	@Autowired
	PortfolioService portfolioService;
	
	@Autowired
	private FileUtils fileUtils;
	
	/**
	 * 포트폴리오 조회
	 * */
	@RequestMapping(value="portfolio")
	public ModelAndView protfolio(HttpSession session) throws Exception {
		
		return new ModelAndView("portfolio", "portfolio", portfolioService.portfolio());
	}
	
	
	/**
	 * 포트폴리오 저장
	 * @throws Exception 
	 * */
	@RequestMapping(value="portfolioSave", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String portfolioSave(
			@RequestParam(value="img") MultipartFile img,
			@RequestParam(value="file") MultipartFile file,
			MultipartHttpServletRequest multi, 
			HttpServletRequest request ,
			HttpSession session ) throws Exception{
		
		portfolioService.portfolioSave(request, multi);
		return "redirect:portfolio";
	}
	
	/**
	 * 포트폴리오 게시판 이미지
	 */
	@RequestMapping("portfolioBoardImg")
	@ResponseBody
	public String portfolioBoardImg(HttpServletRequest request ,HttpSession session) throws Exception{
		
		// ?????????????????????????????
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(request,"portfolioBoardImg");
		System.out.println("{ \"link\" : \"http://localhost/home/resources/portfolioBoardImg/"+list.get(0).get("STORED_FILE_NAME")+"\"}");	
		return "{ \"link\" : \"http://localhost/home/resources/portfolioBoardImg/"+list.get(0).get("STORED_FILE_NAME")+"\"}";
	}
	
	
	/**
	 * 포트폴리오 상세보기
	 * */
	@RequestMapping("portfolioRead")
	public ModelAndView portfolioRead(int portfolioSq ,HttpSession session) throws Exception {
		return new ModelAndView("portfolioRead", "portfolio", portfolioService.portfolioRead(portfolioSq));
	}
	
	/**
	 * 포트폴리오 삭제
	 * */
	@RequestMapping("portfolioDelete")
	public String portfolioDelete(int portfolioSq , HttpSession session) throws Exception {
		portfolioService.portfolioDelete(portfolioSq);
		return "redirect:portfolio";
	}
}
