package com.kms.home.visitor.service;

import java.util.List;

import com.kms.home.visitor.dto.VisitorDTO;

public interface VisitorService {
	/**
	 * 방명록 쓰기
	 * */
	public VisitorDTO visitorInsert(VisitorDTO visitor) throws Exception;
	
	/**
	 * 방명록조회
	 * */
	public List<VisitorDTO> visitorSelect(int page) throws Exception;
	
	/**
	 * 방명록 삭제
	 * */
	public void visitorDel(int visitorSq) throws Exception;
}
