package com.ync.project.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: CustomLoginSuccessHandler.java
  * @Date		: 2019. 11. 06. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 로그인 성공시 지정된 페이지로 이동
  */
@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {

		log.warn("Login Success");

		List<String> roleNames = new ArrayList<>();

		auth.getAuthorities().forEach(authority -> {

			roleNames.add(authority.getAuthority());

		});

		log.warn("ROLE NAMES: " + roleNames);

		if (roleNames.contains("ROLE_ADMIN")) {

			response.sendRedirect("/admin/management");
			return;
		}

		if (roleNames.contains("ROLE_USER")) {

			response.sendRedirect("/");
			return;
		}

		response.sendRedirect("/");
	}
}
