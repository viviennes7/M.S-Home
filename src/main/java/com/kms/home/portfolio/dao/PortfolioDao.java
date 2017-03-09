package com.kms.home.portfolio.dao;

import java.util.List;

import com.kms.home.portfolio.dto.PortfolioDTO;

public interface PortfolioDao {
	/**
	 * 포트폴리오 조회
	 * */
	public List<PortfolioDTO> portfolio();
	
	/**
	 * 포트폴리오 저장
	 * */
	public int portfolioSave(PortfolioDTO dto);
	
	/**
	 * 포트폴리오 상세보기
	 * */
	public PortfolioDTO portfolioRead(int portfolioSq);

	/**
	 * 포트폴리오 삭제
	 * */
	public void portfolioDelete(int portfolioSq);
}
