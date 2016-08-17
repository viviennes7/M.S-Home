package com.kms.home.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.service.MSService;

@Controller
public class MSController {
	
	@Autowired
	MSService service;
	
	/**
	 * TEST
	 * */
	/*@RequestMapping("{url}")
	public void call(HttpSession session) {}*/
	
	/**
	 * 로그인페이지이동
	 * */
	@RequestMapping({ "/", "index"})
	public String index(){
		return "index";
	}
	
	/**
	 * 로그인
	 * */
	@RequestMapping(value="main", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String login(String username, String userpass, HttpSession session){
		session.setAttribute("player", username);
		return service.login(username, userpass);
		
	}
	
	/**
	 * 회원가입
	 * */
	@RequestMapping("join")
	@ResponseBody
	public String join(PlayerDTO dto){
		return service.join(dto);
	}
	
	/**
	 * Setting
	 * */
	@RequestMapping("setting")
	public ModelAndView setting(){
		return null;
	}
}
