package com.ync.project.front.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: CommonController.java
  * @Date		: 2019. 11. 06. 
  * @Author		: 곽우렬
  * @프로그램 설명 : accessError를 처리하기위한 CommonController
  */
@Controller
@Log4j
public class CommonController {

	/**
	  * @Method 설명 : 권한 오류처리
	  * @Method Name : accessDenied
	  * @Date : 2019. 11. 06.
	  * @작성자 : 곽우렬
	  * @param auth
	  * @param model
	  */
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {

		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}

	/**
	  * @Method 설명 : 로그인 호출
	  * @Method Name : loginInput
	  * @Date : 2019. 10. 21.
	  * @작성자 : 이준희
	  * @param error
	  * @param logout
	  * @param model
	  */
	@GetMapping("/login/login")
	public void loginInput(String error, String logout, Model model) {

		log.info("error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("error", "아이디 또는 비밀번호가 잘못되었습니다.");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}

	/**
	  * @Method 설명 : 로그아웃창
	  * @Method Name : logoutGET
	  * @Date : 2019. 11. 06.
	  * @작성자 : 곽우렬
	  */
	@GetMapping("/customLogout")
	public void logoutGET() {

		log.info("custom logout");
	}

	/**
	  * @Method 설명 : 로그아웃 처리
	  * @Method Name : logoutPost
	  * @Date : 2019. 11. 06.
	  * @작성자 : 곽우렬
	  */
	@PostMapping("/customLogout")
	public void logoutPost() {

		log.info("post custom logout");
	}

}
