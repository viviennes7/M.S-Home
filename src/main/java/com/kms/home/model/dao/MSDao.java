package com.kms.home.model.dao;

import java.util.List;
import java.util.Map;

import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.model.dto.PortfolioDTO;
import com.kms.home.model.dto.VisitorDTO;
import com.sun.org.apache.bcel.internal.classfile.Visitor;
import com.sun.xml.internal.ws.wsdl.writer.document.Port;
public interface MSDao {
	/**
	 * 회원가입
	 * */
	public int join(PlayerDTO dto);
	
	/**
	 * 로그인
	 * */
	public PlayerDTO login(PlayerDTO dto);
	
	/**
	 * 사용자정보 조회
	 * */
	public PlayerDTO setting(int playSq);
	
	/**
	 * 사용자정보 수정
	 * */
	public int profileUpdate(PlayerDTO dto);
	
	/**
	 * 프로필사진 수정
	 * */
	public int profileImgUpdate(Map<String, Object> map);
	
	/**
	 * 프로필사진 조회
	 * */
	public String profileImgSelect(int playSq);
	
	/**
	 * 배경사진 수정
	 * */
	public int backgroundImgUpdate(Map<String, Object> map);
	
	/**
	 * 배경사진 조회
	 * */
	public String backgroundImgSelect(int playSq);
	
	
	/**
	 * 방명록 쓰기
	 * */
	
	public int visitorInsert(VisitorDTO visitorDTO);
	
	/**
	 * 방금 쓴 방명록 조회
	 * */
	public VisitorDTO visitorSelectOne();
	
	/**
	 * 방명록 조회
	 * */
	public List<VisitorDTO> visitorSelect(Map<String, Integer> map);
	
	/**
	 * 포트폴리오 조회
	 * */
	public List<PortfolioDTO> portfolio();
	
	/**
	 * 포트폴리오 저장
	 * */
	public int portfolioSave(PortfolioDTO dto);
	
	
	
	
	
	
	
	
	
	
	
	public int lifePost();
}
