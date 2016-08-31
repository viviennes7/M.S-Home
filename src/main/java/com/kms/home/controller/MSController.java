package com.kms.home.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.model.dto.PortfolioDTO;
import com.kms.home.model.dto.VisitorDTO;
import com.kms.home.model.service.MSService;
import com.kms.home.util.CommandMap;
import com.kms.home.util.CommonUtils;

@Controller
public class MSController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	MSService service;
	
	/**
	 * TEST
	 * */
	@RequestMapping("{url}")
	public void call(HttpSession session) {}
	
	
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
	@RequestMapping(value="login", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String login(String username, String userpass, HttpSession session){
		int Sq = service.login(username, userpass);
		session.setMaxInactiveInterval(1800);
		session.setAttribute("player", Sq);
		if(Sq!=-1){
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
	public String join(PlayerDTO dto){
		return service.join(dto);
	}
	
	/**
	 * Setting
	 * */
	@RequestMapping("setting")
	public ModelAndView setting(HttpSession session){
		ModelAndView modelAndView = new ModelAndView("setting");
		PlayerDTO playerDTO = service.setting((int)session.getAttribute("player"));
		modelAndView.addObject("Player", playerDTO);
		return modelAndView;  
	}
	
	/**
	 * 프로필 수정
	 * */
	
	//여기서 리턴안하고 ajax는 못쓰나??
	@RequestMapping(value="profileUpdate", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String profileUpdate(PlayerDTO dto){
		service.profileUpdate(dto);
		return "프로필이 수정되었습니다.";
	}
	
	/**
	 * 프로필 사진 업로드
	 * */
	@RequestMapping("profileImgUpdate")
	@ResponseBody
	public String profileImgUpdate(CommandMap commandMap, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		while(iterator.hasNext()){
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false){
				System.out.println("------------- file start -------------");
				System.out.println("name : "+multipartFile.getName());
				System.out.println("filename : "+multipartFile.getOriginalFilename());
				System.out.println("size : "+multipartFile.getSize());
				System.out.println("-------------- file end --------------\n");
			}
		}
		service.profileImgUpdate(commandMap.getMap(), multipartHttpServletRequest,1);
		return "{\"result\":true}";
	}
	
	/**
	 * 프로필,배경사진 조회
	 * */
	
	@RequestMapping("profileImgSelect")
	@ResponseBody
	public String profileImgSelect(HttpSession session, int flag){
		return service.profileImgSelect((int)session.getAttribute("player"),flag);
	}
	
	/**
	 * 배경사진 업로드
	 * */
	@RequestMapping("backgroundImgUpdate")
	@ResponseBody
	public String backgroundImgUpdate(CommandMap commandMap, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		while(iterator.hasNext()){
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false){
				System.out.println("------------- file start -------------");
				System.out.println("name : "+multipartFile.getName());
				System.out.println("filename : "+multipartFile.getOriginalFilename());
				System.out.println("size : "+multipartFile.getSize());
				System.out.println("-------------- file end --------------\n");
			}
		}
		service.profileImgUpdate(commandMap.getMap(), multipartHttpServletRequest,2);
		return "{\"result\":true}";
	}
	
	/**
	 * 방명록쓰기
	 * */
	@RequestMapping(value="visitorInsert", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String visitorInsert(VisitorDTO visitor,HttpSession session){
		visitor.setPlaySq((int)session.getAttribute("player"));
		Gson gson = new Gson();
		String json=gson.toJson(service.visitorInsert(visitor));
		return json;
		
	}
	
	
	/**
	 * 방명록 조회(최초)
	 * */
	@RequestMapping(value="visitor", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public ModelAndView visitorFirst(){
		List<VisitorDTO> visitor = service.visitorSelect(1);
		ModelAndView mv = new ModelAndView("visitor");
		mv.addObject("visitors", visitor);
		return mv;
	}
	
	/**
	 * 방명록 스크롤 페이징
	 * */
	@RequestMapping(value="visitorSelect", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String visitorSelect(int page){
		List<VisitorDTO> visitor = service.visitorSelect(page);
		Gson gson = new Gson();
		String json = gson.toJson(visitor);
		System.out.println(json);
		return json;
	}
	
	/**
	 * 포트폴리오 조회
	 * */
	@RequestMapping(value="portfolio")
	public ModelAndView protfolio(){
		
		return new ModelAndView("portfolio", "portfolio", service.portfolio());
	}
	
	
	/**
	 * 포트폴리오 저장
	 * */
	@RequestMapping(value="portfolioSave", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String portfolioSave(@RequestParam(value="img") MultipartFile img,@RequestParam(value="file") MultipartFile file,MultipartHttpServletRequest multi, HttpServletRequest request){
		String imgPath =request.getServletContext().getRealPath("/resources/portFolioImg/");
		String imgFileName = img.getOriginalFilename();
		String imgOriginalFileExtension = imgFileName.substring(imgFileName.lastIndexOf("."));
        String imgStoredFileName = CommonUtils.getRandomString() + imgOriginalFileExtension;
		
		try{
			img.transferTo(new File(imgPath+"/" +imgStoredFileName ));
		}catch(IOException e){
			e.printStackTrace();
		}
		
		System.out.println("imgName : " + imgStoredFileName);
		
		
		String filePath =request.getServletContext().getRealPath("/resources/portFolioFile/");
		String fileFileName = file.getOriginalFilename();
		String fileOriginalFileExtension = fileFileName.substring(fileFileName.lastIndexOf("."));
        String fileStoredFileName = CommonUtils.getRandomString() + fileOriginalFileExtension;
		
		try{
			file.transferTo(new File(filePath+"/" +fileStoredFileName ));
		}catch(IOException e){
			e.printStackTrace();
		}
		
		System.out.println("fileName : " + fileStoredFileName);
		
		
		PortfolioDTO dto = new PortfolioDTO(multi.getParameter("subject"), multi.getParameter("strapline1"), 
				multi.getParameter("strapline2"), multi.getParameter("strapline3"), multi.getParameter("strapline4"), 
				multi.getParameter("strapline5"), multi.getParameter("content"), imgStoredFileName, fileStoredFileName);
		
		System.out.println(dto);
		
		service.portfolioSave(dto);
		
		return "redirect:portfolio";
	}
	
	
	
	
	
	/**
	 * Post버튼 클릭
	 * (SQ)
	 * */
	@RequestMapping("lifePost")
	@ResponseBody
	public String lifePost(HttpServletRequest request){
		int sq = service.lifePost();
		request.getSession().setAttribute("boardSq", sq);
		return "success";
	}
	
	
}
