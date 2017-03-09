package com.kms.home.visitor.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kms.home.visitor.dto.VisitorDTO;
import com.kms.home.visitor.service.VisitorService;

@Controller
public class VisitorController {
	
	@Autowired
	VisitorService visitorService;
	
	/**
	 * 방명록쓰기
	 * */
	@RequestMapping(value="visitorInsert", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String visitorInsert(VisitorDTO visitor, HttpSession session) throws Exception {
		System.out.println("방명록 : " + visitor.getSubject()+"/"+visitor.getContent());
		
		visitor.setPlaySq((int)session.getAttribute("player"));
		Gson gson = new Gson();
		String json=gson.toJson(visitorService.visitorInsert(visitor));
		return json;
		
	}
	
	/**
	 * 방명록삭제
	 * */
	@RequestMapping("visitorDel")
	@ResponseBody
	public String visitorDel(int visitorSq) throws Exception {
		visitorService.visitorDel(visitorSq);
		return "success";
	}
	
	
	/**
	 * 방명록 조회 스크롤 페이징
	 * */
	@RequestMapping(value="visitorSelect", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public synchronized  String visitorSelect(int page,HttpSession session) throws Exception {
		List<VisitorDTO> visitor = visitorService.visitorSelect(page);
		Gson gson = new Gson();
		String json = gson.toJson(visitor);
		return json;
	}
}
