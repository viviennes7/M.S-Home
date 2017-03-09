package com.kms.home.common.util;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class SessionCheckAdvice {

	@Pointcut("execution(public * com.kms.home.controller.*Controller.*(..,javax.servlet.http.HttpSession))")
	public void pointCut() {}

	@Before("pointCut()")
	public void before(JoinPoint point) throws LoginException {
		Object obj = point.getArgs()[0];
		HttpSession session = null;
		if (obj instanceof HttpSession) {
			session = (HttpSession) obj;
			if (session.getAttribute("player") == null) {
				try {
					throw new LoginException();
				} catch (LoginException e) {
					  throw new LoginException();
				}
			}
		}
	}
}
