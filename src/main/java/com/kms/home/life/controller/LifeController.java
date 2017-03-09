package com.kms.home.life.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LifeController {
	
	/**
	 * 라이프 페이지 이동
	 * @MethodName : life
	 * @작성일 : 2017. 3. 9.
	 * @작성자 : 김민수
	 * @param session
	 * @throws Exception
	 */
	@RequestMapping("life")
	public void life(HttpSession session) throws Exception {}
}
