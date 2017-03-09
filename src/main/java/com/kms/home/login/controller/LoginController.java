package com.kms.home.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kms.home.common.dto.PlayerDTO;
import com.kms.home.login.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	LoginService  loginService;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * 로그인 페이지 이동
	 * @MethodName : index
	 * @작성일 : 2017. 3. 9.
	 * @작성자 : 김민수
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/")
	public ModelAndView index() throws Exception {
		logger.info("확인 ::::::::::::::::::::::: {}");
		return new ModelAndView("login/index");
	}
	
	/**
	 * 로그인
	 * @MethodName : login
	 * @작성일 : 2017. 3. 9.
	 * @작성자 : 김민수
	 * @param session
	 * @param username
	 * @param userpass
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String login(HttpSession session, String username, String userpass) throws Exception {
		int Sq = loginService.login(username, userpass);
		session.setMaxInactiveInterval(5000);
		session.setAttribute("player", Sq);
		
		
		//서비스 단으로 빼기
		HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
        String ip = req.getHeader("X-FORWARDED-FOR");
        if (ip == null)
            ip = req.getRemoteAddr();
        
        //헤더에 담에서 주기
		if(Sq!=-1){
			System.out.println("홈페이지 접속 IP : " + ip);
	        System.out.println("로그인 ID: " + username);
	        System.out.println("시간 : " + new java.text.SimpleDateFormat("hh:mm:ss").format(new java.util.Date()));
			return "success";
		}else{
			return "fail";
		}
	}
	
	/**
	 * 회원가입
	 * */
	@RequestMapping("join")
	@ResponseBody
	public String join(PlayerDTO dto) throws Exception {
		return loginService.join(dto);
	}
	
	/**
	 * ID 유효성체크
	 * */
	
	//URL 동사 명사순으로 변경
	@RequestMapping("idCheck")
	@ResponseBody
	public String idCheck(String loginId) throws Exception {
		return loginService.idCheck(loginId);
	}
	
	
	/**
	 * 로그아웃
	 * */
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
}
