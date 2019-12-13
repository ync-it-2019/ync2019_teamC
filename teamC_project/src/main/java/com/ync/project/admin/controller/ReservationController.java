package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.MemberService;
import com.ync.project.admin.service.ReservationService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.InquireService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ReservationController.java
  * @Date		: 2019. 11. 02. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 관리자 회원상품 구매 목록
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class ReservationController {
	private ReservationService service;
	/**
	  * @Method 설명 : 관리자화면 상품 구매관리목록 불러오기
	  * @Method Name : reservation
	  * @Date : 2019. 11. 02.
	  * @작성자 : 곽우렬
	  * @param cri
	  * @param model
	  */
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/subscriber")
	public void reservation(Criteria cri, Model model) {
		log.info("resevation : " + cri);
		model.addAttribute("reservation", service.getListWithPaging(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, total));
	}
	
	/**
	  * @Method 설명 : 관리자화면 구매관리 상세보기
	  * @Method Name : reservationget
	  * @Date : 2019. 12. 04.
	  * @작성자 : 곽우렬
	  * @param re_idx
	  * @param model
	  */
	@GetMapping("/reservationget")
	public void reservationget(@RequestParam("re_idx") long re_idx, Model model) {
		log.info("resevationget");
		model.addAttribute("reservation", service.get(re_idx));
	}
	
}
