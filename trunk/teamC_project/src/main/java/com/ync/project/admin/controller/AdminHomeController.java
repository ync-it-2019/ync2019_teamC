package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

/**
  * @FileName   : HomeController.java
  * @Date      : 2019. 10. 16. 
  * @Author      : 정진우
  * @프로그램 설명 : 메인 페이지 호출용 controller
  */

/**
  * @FileName   : AdminHomeController.java
  * @Date      : 2019. 10. 21. 
  * @Author      : 곽우렬
  * @프로그램 설명 :
  */
/**
 * 
 * @author Administrator
 *
 */
@Controller
@Log4j
public class AdminHomeController {
   
//   @GetMapping(value = "/admin/registration")
//   @PreAuthorize("hasRole('ROLE_ADMIN')")
//   public String get_registration() {
//
//      log.info("Registration!");
//   
//      return "admin/registration";
//   }
}