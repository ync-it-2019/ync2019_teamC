package com.ync.project.admin.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.front.service.InquireService;
import com.ync.project.admin.service.ProductService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


/**
  * @FileName	: AdminProductController.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminProductController {
	
//	@Value("${globalConfig.uploadPath}")
//	private String uploadPath;
	
	private ProductService service;
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/product_manage")
	public void manage(Criteria cri, Model model) {
		log.info("manage : " + cri);
		model.addAttribute("manage", service.getListWithPaging(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, 123));
	}
	
	@PostMapping("/registration")
	public String register(ProductVO product, RedirectAttributes rttr) {
		log.info("register: " + product);
		service.register(product);
		rttr.addFlashAttribute("result", product.getProduct_num());
		return "redirect:/admin/product_manage";
	}
	
	
}
