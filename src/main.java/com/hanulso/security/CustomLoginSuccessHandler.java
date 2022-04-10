package com.hanulso.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.hanulso.domain.UserVO;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		List<String> grade = new ArrayList();
		authentication.getAuthorities().forEach(authority ->{
			grade.add(authority.getAuthority());
		});

		if(grade.contains("ROLE_ADMIN") || grade.contains("ROLE_SUPER_ADMIN")) {
			response.sendRedirect("/admin/manage/admin_cor_list.do");
			return;
		}
		if(grade.contains("ROLE_MEMBER")) {
			response.sendRedirect("/");
			return;
		}
		if(grade.contains("ROLE_USER")) {
			response.sendRedirect("/");
			return;
		}
		if(grade.contains("ROLE_NON")) {
			response.sendRedirect("/user/mailCheck_Request.do");
			return;
		}
	}

}
