package com.kms.home.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kms.home.model.dto.PlayerDTO;
import com.kms.home.model.dto.VisitorDTO;
import com.kms.home.model.service.MSService;
import com.kms.home.util.FileUtils;

@Controller
public class MSController {
	
	@Autowired
	MSService service;
	@Autowired
	private FileUtils fileUtils;
	
	
	/**
	 * TEST
	 * */
	@RequestMapping("{url}")
	public void call() {}
	
	/**
	 * 로그인페이지이동
	 * */
	@RequestMapping({ "/", "index"})
	public String index() throws Exception {
		
		return "index";
	}
	
	/**
	 * 로그인
	 * */
	@RequestMapping(value="login", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String login(HttpSession session, String username, String userpass) throws Exception {
		int Sq = service.login(username, userpass);
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
		return service.join(dto);
	}
	
	/**
	 * ID 유효성체크
	 * */
	
	//URL 동사 명사순으로 변경
	@RequestMapping("idCheck")
	@ResponseBody
	public String idCheck(String loginId) throws Exception {
		return service.idCheck(loginId);
	}
	
	
	/**
	 * 로그아웃
	 * */
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	/**
	 * 메인 창
	 * */
	@RequestMapping(value = "main")
	public void Main(HttpSession session) throws Exception {}
	
	
	/**
	 * 라이프 창
	 * */
	@RequestMapping("life")
	public void life(HttpSession session) throws Exception {}
	
	
	/**
	 * Setting
	 * */
	@RequestMapping("setting")
	public ModelAndView setting(HttpSession session) throws Exception {
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
	public String profileUpdate(PlayerDTO dto ,HttpSession session ) throws Exception {
		dto.setPlaySq((int)session.getAttribute("player"));
		service.profileUpdate(dto);
		return "프로필이 수정되었습니다.";
	}
	
	/**
	 * 프로필 사진 업로드
	 * */
	@RequestMapping("profileImgUpdate")
	@ResponseBody
	public String profileImgUpdate(HttpServletRequest request,HttpSession session) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		service.profileImgUpdate(multipartHttpServletRequest, 1);
		return "{\"result\":true}";
	}
	
	/**
	 * 프로필,배경사진 조회
	 * */
	
	@RequestMapping("profileImgSelect")
	@ResponseBody
	public String profileImgSelect(int flag ,HttpSession session) throws Exception {
		return service.profileImgSelect((int)session.getAttribute("player"),flag);
	}
	
	/**
	 * 배경사진 업로드
	 * */
	@RequestMapping("backgroundImgUpdate")
	@ResponseBody
	public String backgroundImgUpdate(HttpServletRequest request ,HttpSession session) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		service.profileImgUpdate(multipartHttpServletRequest,2);
		return "{\"result\":true}";
	}
	
	/**
	 * 방명록쓰기
	 * */
	@RequestMapping(value="visitorInsert", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String visitorInsert(VisitorDTO visitor, HttpSession session) throws Exception {
		System.out.println("방명록 : " + visitor.getSubject()+"/"+visitor.getContent());
		
		visitor.setPlaySq((int)session.getAttribute("player"));
		Gson gson = new Gson();
		String json=gson.toJson(service.visitorInsert(visitor));
		return json;
		
	}
	
	/**
	 * 방명록삭제
	 * */
	@RequestMapping("visitorDel")
	@ResponseBody
	public String visitorDel(int visitorSq) throws Exception {
		service.visitorDel(visitorSq);
		return "success";
	}
	
	
	/**
	 * 방명록 조회 스크롤 페이징
	 * */
	@RequestMapping(value="visitorSelect", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public synchronized  String visitorSelect(int page,HttpSession session) throws Exception {
		List<VisitorDTO> visitor = service.visitorSelect(page);
		Gson gson = new Gson();
		String json = gson.toJson(visitor);
		return json;
	}
	
	/**
	 * 포트폴리오 조회
	 * */
	@RequestMapping(value="portfolio")
	public ModelAndView protfolio(HttpSession session) throws Exception {
		
		return new ModelAndView("portfolio", "portfolio", service.portfolio());
	}
	
	
	/**
	 * 포트폴리오 저장
	 * @throws Exception 
	 * */
	@RequestMapping(value="portfolioSave", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String portfolioSave(
			@RequestParam(value="img") MultipartFile img,
			@RequestParam(value="file") MultipartFile file,
			MultipartHttpServletRequest multi, 
			HttpServletRequest request ,
			HttpSession session ) throws Exception{
		
		service.portfolioSave(request, multi);
		return "redirect:portfolio";
	}
	
	/**
	 * 포트폴리오 게시판 이미지
	 */
	@RequestMapping("portfolioBoardImg")
	@ResponseBody
	public String portfolioBoardImg(HttpServletRequest request ,HttpSession session) throws Exception{
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(request,"portfolioBoardImg");
		System.out.println("{ \"link\" : \"http://localhost/home/resources/portfolioBoardImg/"+list.get(0).get("STORED_FILE_NAME")+"\"}");	
		return "{ \"link\" : \"http://localhost/home/resources/portfolioBoardImg/"+list.get(0).get("STORED_FILE_NAME")+"\"}";
	}
	
	
	/**
	 * 포트폴리오 상세보기
	 * */
	@RequestMapping("portfolioRead")
	public ModelAndView portfolioRead(int portfolioSq ,HttpSession session) throws Exception {
		return new ModelAndView("portfolioRead", "portfolio", service.portfolioRead(portfolioSq));
	}
	
	/**
	 * 포트폴리오 삭제
	 * */
	@RequestMapping("portfolioDelete")
	public String portfolioDelete(int portfolioSq , HttpSession session) throws Exception {
		service.portfolioDelete(portfolioSq);
		return "redirect:portfolio";
	}
	
	/**
	 * 수정하기버튼
	 * */
	@RequestMapping("portfolioUpdateView")
	public ModelAndView portfolioUpdateView(int portfolioSq, HttpSession session) throws Exception{
		return new ModelAndView("portfolioUpdateView", "portfolio", service.portfolioRead(portfolioSq));
	}
	
	
	/**
	 * Life 글쓰기
	 * @throws Exception 
	 * */
	/*@RequestMapping(value="imageUpload", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String imageUpload(HttpServletRequest request) throws Exception{
		
		System.out.println("시작");
		System.out.println("제목 : " + request.getParameter("value"));
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;
		
		
		return "{\"confirm\":\"success\"}";
	}
	*/
	
}
