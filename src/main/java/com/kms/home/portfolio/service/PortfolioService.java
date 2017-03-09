package com.kms.home.portfolio.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kms.home.portfolio.dto.PortfolioDTO;

public interface PortfolioService {
	/**
	 * 포트폴리오 조회
	 * */
	public List<PortfolioDTO> portfolio() throws Exception;
	
	
	/**
	 * 포트폴리오 저장
	 * @throws Exception 
	 * */
	public void portfolioSave(HttpServletRequest request, MultipartHttpServletRequest multi) throws Exception;
	
	/**
	 * 포트폴리오 상세보기
	 * */
	public PortfolioDTO portfolioRead(int portfolioSq) throws Exception;
	
	/**
	 * 포트폴리오 삭제
	 * */
	public void portfolioDelete(int portfolioSq);
}
