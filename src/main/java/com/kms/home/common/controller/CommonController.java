package com.kms.home.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	/**
	 * 로그인 페이지 이동
	 * @MethodName : index
	 * @작성일 : 2017. 3. 9.
	 * @작성자 : 김민수
	 * @return
	 * @throws Exception
	 */
	@RequestMapping({ "/", "index"})
	public String index() throws Exception {
		
		return "redirect:login/";
	}
}
