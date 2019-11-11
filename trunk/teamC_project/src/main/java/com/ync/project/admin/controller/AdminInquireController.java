package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.front.service.InquireService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: InquireController.java
  * @Date		: 2019. 11. 01. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminInquireController {
	private InquireService service;
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/inquire")
	public void inquire(Criteria cri, Model model) {
		log.info("inquire : " + cri);
		model.addAttribute("inquire", service.getListWithPaging(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, 123));
	}
	
//	@PostMapping("/inquireregister")
//	public String register(InquireVO inquire, RedirectAttributes rttr) {
//		log.info("register: " + inquire);
//		service.register(inquire);
//		rttr.addFlashAttribute("result", inquire.getUserid());
//		return "redirect:/shop/review/package1-inquire";
//	}
	
	
}
