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
import com.ync.project.domain.PageDTO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


/**
  * @FileName	: FrontProductController.java
  * @Date		: 2019. 11. 03. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@Controller
@Log4j
@RequestMapping("/shop/*")
@AllArgsConstructor
public class FrontProductController {
	private ProductService service;
	private ReviewService service1;
	private InquireService service2;
	
	@GetMapping("/shop")
	public void shop(Model model) {
		
		log.info("shop");
		model.addAttribute("shop1", service.get(1));
		model.addAttribute("shop2", service.get(2));
		model.addAttribute("shop3", service.get(3));
		model.addAttribute("shop4", service.get(4));
		
	}
	
	@GetMapping({"/package", "/review", "/inquire"})
	public void manage(@RequestParam("product_num") int product_num, Model model, Criteria cri) {
		 log.info("list: " + cri);
		 
	     int total = service1.getTotal(cri);
	     
		log.info("/package or review");
		model.addAttribute("manage", service.get(product_num));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		model.addAttribute("review", service1.getListWithPaging(cri, product_num));
		model.addAttribute("inquire", service2.getListWithPaging2(cri, product_num));
		
		
	}
	
////	public void reivew(Criteria cri, Model model) {
//	 log.info("list: " + cri);
//     model.addAttribute("list", service.getListWithPaging(cri));
////     model.addAttribute("pageMaker", new PageDTO(cri, 123));
//     
//     int total = service.getTotal(cri);
//     
//     log.info("total: " + total);
//     
//     model.addAttribute("pageMaker", new PageDTO(cri, total));
////	}
}
