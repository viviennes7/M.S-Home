package com.kms.home.login.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kms.home.common.dto.PlayerDTO;
import com.kms.home.login.dao.LoginDao;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * 회원가입
	 * (result에 따라 리턴 깔끔하게 다시 할 것.)
	 * */
	public String join(PlayerDTO dto) throws Exception {
		/*dto.setPassword(BCrypt.hashpw(dto.getPassword(), BCrypt.gensalt(12)));*/
		LoginDao dao=sqlSession.getMapper(LoginDao.class);
		int result = dao.join(dto);
		return null;
	}
	
	/**
	 * ID 유효성 체크
	 * */
	public String idCheck(String loginId) throws Exception  {
		LoginDao dao = sqlSession.getMapper(LoginDao.class);
		if(dao.idCheck(loginId)==null){
			return "success";
		}else{
			return "fail";
		}
	}
	
	/**
	 * 로그인
	 * */
	public int login(String username, String userpass) throws Exception {
		
		//비밀번호 암호화 추가하기
		
		/*userpass = BCrypt.hashpw(userpass, BCrypt.gensalt(12));*/
		LoginDao dao=sqlSession.getMapper(LoginDao.class);
		PlayerDTO playerDTO = dao.login(new PlayerDTO(username, userpass));
		if(playerDTO==null){
			return -1;
		}else{
			return playerDTO.getPlaySq();
		}
	}

}
