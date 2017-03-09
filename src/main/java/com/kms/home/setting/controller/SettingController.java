package com.kms.home.setting.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kms.home.common.dto.PlayerDTO;
import com.kms.home.setting.service.SettingService;

@Controller
public class SettingController {
	
	@Autowired
	SettingService settingService;
	
	/**
	 * Setting
	 * */
	@RequestMapping("setting")
	public ModelAndView setting(HttpSession session) throws Exception {
		ModelAndView modelAndView = new ModelAndView("setting");
		PlayerDTO playerDTO = settingService.setting((int)session.getAttribute("player"));
		modelAndView.addObject("Player", playerDTO);
		return modelAndView;  
	}
	
	/**
	 * 프로필 수정
	 * */
	//여기서 리턴안하고 ajax는 못쓰나??
	@RequestMapping(value="profileUpdate", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String profileUpdate(PlayerDTO dto ,HttpSession session ) throws Exception {
		dto.setPlaySq((int)session.getAttribute("player"));
		settingService.profileUpdate(dto);
		return "프로필이 수정되었습니다.";
	}
	
	/**
	 * 프로필 사진 업로드
	 * */
	/*@RequestMapping("profileImgUpdate")
	@ResponseBody
	public String profileImgUpdate(HttpServletRequest request,HttpSession session) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		settingService.profileImgUpdate(multipartHttpServletRequest, 1);
		return "{\"result\":true}";
	}*/
	
	/**
	 * 프로필,배경사진 조회
	 * */
	
	/*@RequestMapping("profileImgSelect")
	@ResponseBody
	public String profileImgSelect(int flag ,HttpSession session) throws Exception {
		return settingService.profileImgSelect((int)session.getAttribute("player"),flag);
	}*/
	
	/**
	 * 배경사진 업로드
	 * */
	/*@RequestMapping("backgroundImgUpdate")
	@ResponseBody
	public String backgroundImgUpdate(HttpServletRequest request ,HttpSession session) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		settingService.profileImgUpdate(multipartHttpServletRequest,2);
		return "{\"result\":true}";
	}*/
}
