package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ync.project.domain.PageDTO;

import com.ync.project.admin.service.MemberService;
import com.ync.project.admin.service.ProductService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: MemberController.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 관리자 회원관리 컨트롤러, 회원가입
  */
@Controller
@Log4j
@AllArgsConstructor
public class MemberController {
	private MemberService service;
	/**
	  * @Method 설명 : 관리자화면 회원 관리 불러오기
	  * @Method Name : list
	  * @Date : 2019. 10. 28.
	  * @작성자 : 곽우렬
	  * @param cri
	  * @param model
	  */
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/admin/management")
	public void list(Criteria cri, Model model) {
		log.info("list : " + cri);
		model.addAttribute("list", service.getListWithPaging(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, total));
	}
	
	/**
	  * @Method 설명 : 회원가입
	  * @Method Name : register
	  * @Date : 2019. 11. 24.
	  * @작성자 : 곽우렬
	  * @param member
	  * @param rttr
	  * @return
	  */
	@PostMapping("/login/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		log.info("register: " + member);
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
	      member.setUserpw(scpwd.encode(member.getUserpw()));
		service.register(member);
		rttr.addFlashAttribute("result", member.getUserid());
		return "redirect:/";
	}
}
