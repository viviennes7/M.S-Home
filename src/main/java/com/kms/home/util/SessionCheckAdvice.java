package com.kms.home.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Component
@Aspect
public class SessionCheckAdvice {

	//@Pointcut("args(javax.servlet.http.HttpSession,..)")
	@Pointcut("execution(public * com.kms.home.controller.*Controller.*(..,javax.servlet.http.HttpSession))")
	public void pointCut() {}

	@Around("pointCut()")
	public Object before(ProceedingJoinPoint point) throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		
		if(session.getAttribute("player") == null){
			ModelAndView mv = new ModelAndView(new RedirectView("/"));
			return mv;
		}else{
			Object output = point.proceed();
			return output;
		}
	}
}
