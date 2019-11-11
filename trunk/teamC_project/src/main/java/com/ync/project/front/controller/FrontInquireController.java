package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.front.service.InquireService;
import com.ync.project.front.service.ReviewService;
import com.ync.project.admin.service.ProductService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.domain.ReviewVO;

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
@RequestMapping("/shop/*")
@AllArgsConstructor
public class FrontInquireController {
	private ProductService service;
	private InquireService service1;
	
//	@GetMapping({"/package", "/inquire"})
//	public void manage(@RequestParam("product_num") int product_num, Model model, Criteria cri) {
//		 log.info("list: " + cri);
//		 
//	     int total = service1.getTotal(cri);
//	     
//		log.info("/package or review");
//		model.addAttribute("manage", service.get(product_num));
//		model.addAttribute("pageMaker", new PageDTO(cri, 123));
//		model.addAttribute("review", service1.getListWithPaging2(cri, product_num));
//		
//		
//	}
	
//	@PostMapping("/inquireregister")
//	public String register(InquireVO inquire, RedirectAttributes rttr) {
//		log.info("register: " + inquire);
//		service.register(inquire);
//		rttr.addFlashAttribute("result", inquire.getUserid());
//		return "redirect:/shop/review/package1-inquire";
//	}
	
	
}
