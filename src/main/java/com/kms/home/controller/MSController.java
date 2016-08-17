package com.kms.home.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.service.MSService;

@Controller
public class MSController {
	
	@Autowired
	MSService service;
	
	@RequestMapping({ "/", "index"})
	public String index(){
		return "index";
	}
	
	@RequestMapping("main")
	public void login(String username, String userpass){
		
	}
	
	
	@RequestMapping("join")
	@ResponseBody
	public String join(PlayerDTO dto){
		return service.join(dto);
	}
	
	
	@RequestMapping("{url}")
	public void call(HttpSession session) {
	}
}
