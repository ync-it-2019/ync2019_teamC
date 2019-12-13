package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
  * @프로그램 설명 :관리자 상품문의 관리 컨트롤러
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
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, total));
	}
	
	/**
	  * @Method 설명 : 관리자화면 상품문의,수정 불러오기
	  * @Method Name : inquireget
	  * @Date : 2019. 12. 13.
	  * @작성자 : 곽우렬
	  * @param q_idx
	  * @param model
	  */
	@GetMapping({"/inquireget", "/modify"})
	public void inquireget(@RequestParam("q_idx") long q_idx, Model model) {
		
		log.info("inquireget or modify");
		model.addAttribute("inquire", service.get(q_idx));
	}
	
	/**
	  * @Method 설명 : 상품문의 답글 등록/수정
	  * @Method Name : modify
	  * @Date : 2019. 12. 13.
	  * @작성자 : 곽우렬
	  * @param inquire
	  * @param rttr
	  * @return
	  */
	@PostMapping("/modify")
	public String modify(InquireVO inquire, RedirectAttributes rttr) {
		log.info("modify:" + inquire);
		
		if (service.modify2(inquire)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/inquire";
	}
}
