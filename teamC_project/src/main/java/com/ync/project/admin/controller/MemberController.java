package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ync.project.domain.PageDTO;

import com.ync.project.admin.service.MemberService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

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
@AllArgsConstructor
public class MemberController {
	private MemberService service;
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/admin/management")
	public void list(Criteria cri, Model model) {
		log.info("list : " + cri);
		model.addAttribute("list", service.getListWithPaging(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, 123));
	}
	
	@PostMapping("/login/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		log.info("register: " + member);
		service.register(member);
		rttr.addFlashAttribute("result", member.getUserid());
		return "redirect:/login/login";
	}
}
