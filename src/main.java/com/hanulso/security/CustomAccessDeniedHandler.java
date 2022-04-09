package com.hanulso.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler{
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		log.info("Exception : "+accessDeniedException);
		log.info("LocalizedMessage : "+accessDeniedException.getLocalizedMessage());
		log.info("Message : "+accessDeniedException.getMessage());
		log.info("StackTrace : "+accessDeniedException.getStackTrace());
		
		request.setAttribute("errMsg", accessDeniedException.getMessage());
		request.getRequestDispatcher("/WEB-INF/views/no_auth.jsp").forward(request, response);
	}
	
}
