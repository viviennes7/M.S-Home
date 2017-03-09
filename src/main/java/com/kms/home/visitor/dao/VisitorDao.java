package com.kms.home.visitor.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kms.home.visitor.dto.VisitorDTO;

@Repository
public interface VisitorDao {
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
	 * 방명록 삭제
	 * */
	public int visitorDel(int visitorSq);
	
}
