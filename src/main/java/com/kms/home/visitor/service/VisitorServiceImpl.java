package com.kms.home.visitor.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kms.home.visitor.dao.VisitorDao;
import com.kms.home.visitor.dto.VisitorDTO;

@Service("visitorService")
public class VisitorServiceImpl implements VisitorService {

	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * 방명록 쓰기
	 * */
	public VisitorDTO visitorInsert(VisitorDTO visitor) throws Exception  {
		VisitorDao dao = sqlSession.getMapper(VisitorDao.class);
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

		VisitorDao dao = sqlSession.getMapper(VisitorDao.class);
		return dao.visitorSelect(map);
		
	}
	
	/**
	 * 방명록 삭제
	 * */
	public void visitorDel(int visitorSq) throws Exception  {
		VisitorDao dao = sqlSession.getMapper(VisitorDao.class);
		dao.visitorDel(visitorSq);
	}

}
