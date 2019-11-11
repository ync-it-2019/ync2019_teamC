package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.front.service.ReviewService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReviewVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: MemberController.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@Controller
@Log4j
@RequestMapping("/shop/*")
@AllArgsConstructor
public class ReviewController {
	private ReviewService service;
	
//	@GetMapping("/review")
//	public void reivew(Criteria cri, Model model) {
//		log.info("review : " + cri);
//		model.addAttribute("review", service.getListWithPaging(cri));
//		
//		 int total = service.getTotal(cri);
//	      
//	      log.info("total: " + total);
//	      
//	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, 123));
//	}
	
	@PostMapping("/reviewregister")
	public String register(ReviewVO review, RedirectAttributes rttr) {
		log.info("register: " + review);
		service.register(review);
		rttr.addFlashAttribute("result", review.getUserid());
		return "redirect:/shop/review/package1-review";
	}
	
	
}
