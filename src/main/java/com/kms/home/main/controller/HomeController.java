package com.kms.home.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	/**
	 * 메인 창
	 * */
	@RequestMapping(value = "main")
	public void Main(HttpSession session) throws Exception {}
	
}
