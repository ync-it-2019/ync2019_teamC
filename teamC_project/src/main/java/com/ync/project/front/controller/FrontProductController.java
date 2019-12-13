package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ync.project.util.UploadUtils;

import com.ync.project.front.service.InquireService;
import com.ync.project.front.service.ReviewService;
import com.ync.project.admin.service.ProductService;
import com.ync.project.admin.service.ReservationService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.domain.ReservationVO;
import com.ync.project.domain.ReviewVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


/**
  * @FileName	: FrontProductController.java
  * @Date		: 2019. 11. 03. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품페이지 
  */
@Controller
@Log4j
@RequestMapping("/shop/*")
//@AllArgsConstructor
public class FrontProductController {
	
	@Autowired
	private ProductService service;
	@Autowired
	private ReviewService service1;
	@Autowired
	private InquireService service2;
	@Autowired
	private ReservationService service3;
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	

	
	/**
	  * @Method 설명 : 상품 목록 호출
	  * @Method Name : shop
	  * @Date : 2019. 10. 21.
	  * @작성자 : 이준희
	  * @param cri
	  * @param model
	  */
	@GetMapping("/shop")
	public void shop (Criteria cri, Model model) {
		 log.info("shop");

		model.addAttribute("shop", service.getListWithPaging2(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, total));
	}
	
	/**
	  * @Method 설명 : 상품 상세설명, 상품평, 상품문의 호출
	  * @Method Name : manage
	  * @Date : 2019. 12. 04.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param model
	  * @param cri
	  */
	
	@GetMapping({"/package", "/review", "/inquire"})
	public void manage(@RequestParam("product_num") int product_num, Model model, Criteria cri) {
		 log.info("list: " + cri);
		 
	     int total = service1.getTotal(cri);
	     
		log.info("/package or review or inquire");
		model.addAttribute("manage", service.get(product_num));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("review", service1.getListWithPaging(cri, product_num));
		model.addAttribute("inquire", service2.getListWithPaging2(cri, product_num));
		
		
	}
	

	
	/**
	  * @Method 설명 : 상품 평 글쓰기폼 호출
	  * @Method Name : ReviewWriteForm
	  * @Date : 2019. 12. 03.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param model
	  * @return
	  */
	@GetMapping(value ="/review/reviewregister")
	public String ReviewWriteForm(@RequestParam("product_num") int product_num, Model model) {
		model.addAttribute("manage", service.get(product_num));
		log.info("ReviewRegister");
		return "shop/review/reviewregister";
	}
	
	/**
	  * @Method 설명 : 상품 평 등록
	  * @Method Name : register
	  * @Date : 2019. 12. 04.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param uploadFile
	  * @param review
	  * @return
	  */
	@PostMapping("/review/reviewregister")
	public String register(@RequestParam("product_num") int product_num, MultipartFile uploadFile,ReviewVO review) {
		log.info("글등록");
		log.info("파일 이름: " + uploadFile.getOriginalFilename());
	    log.info("파일 크기: " + uploadFile.getSize());
	    log.info("컨텐트 타입: " + uploadFile.getContentType());
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (uploadFile.getSize() > 0) {
				review.setImg(UploadUtils.uploadFormPost(uploadFile, uploadPath));
			}
		
		log.info("register: " + review);
		service1.register(review);
		
		return "redirect:/shop/review?product_num=" + product_num;
	}
	

	
	/**
	  * @Method 설명 : 상품 문의 글쓰기폼 호출
	  * @Method Name : InquireWriteForm
	  * @Date : 2019. 12. 04.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param model
	  * @return
	  */
	@GetMapping(value ="/inquire/inquireregister")
	public String InquireWriteForm(@RequestParam("product_num") int product_num, Model model) {
		model.addAttribute("manage", service.get(product_num));
		log.info("ReviewRegister");
		return "shop/inquire/inquireregister";
	}
	
	/**
	  * @Method 설명 : 상품 문의 등록
	  * @Method Name : register
	  * @Date : 2019. 12. 04.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param inquire
	  * @return
	  */
	@PostMapping("inquire/inquireregister")
	public String register(@RequestParam("product_num") int product_num, InquireVO inquire) {
		
		log.info("register: " + inquire);
		service2.register(inquire);
		
		return "redirect:/shop/inquire?product_num=" + product_num;
	}

	

	/**
	  * @Method 설명 : 상품문의 상세보기, 수정폼 호출
	  * @Method Name : inquireget
	  * @Date : 2019. 12. 04.
	  * @작성자 : 이준희
	  * @param q_idx
	  * @param model
	  */
	@GetMapping({"inquire/inquireget", "inquire/modify"})
	public void inquireget(@RequestParam("q_idx") long q_idx, Model model) {
		
		log.info("inquire/get or modify");
		model.addAttribute("inquire", service2.get(q_idx));
	}
	

	/**
	  * @Method 설명 : 상품 문의 수정
	  * @Method Name : modify
	  * @Date : 2019. 12. 09.
	  * @작성자 : 곽우렬
	  * @param q_idx
	  * @param inquire
	  * @param rttr
	  * @return
	  */
	@PostMapping("inquire/modify")
	public String modify(@RequestParam("q_idx") long q_idx, InquireVO inquire, RedirectAttributes rttr) {
		log.info("modify:" + inquire);
		
		if (service2.modify(inquire)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/shop/inquire/inquireget?q_idx=" + q_idx;
	}
	

	/**
	  * @Method 설명 : 상품 문의 삭제
	  * @Method Name : remove
	  * @Date : 2019. 12. 09.
	  * @작성자 : 곽우렬
	  * @param q_idx
	  * @param inquire
	  * @param rttr
	  * @return
	  */
	@PostMapping("inquire/remove")
	public String remove(@RequestParam("q_idx") long q_idx, InquireVO inquire, RedirectAttributes rttr) {
		log.info("remove:" + q_idx);
		
		
		if (service2.remove(q_idx)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/shop/shop";
	}
	
	
	/**
	  * @Method 설명 : 상품 평 상세보기, 수정폼 호출
	  * @Method Name : reviewget
	  * @Date : 2019. 12. 04.
	  * @작성자 : 이준희
	  * @param review_idx
	  * @param model
	  */
	@GetMapping({"review/reviewget", "review/modify"})
	public void reviewget(@RequestParam("review_idx")long review_idx, Model model) {
		log.info("review/get");
		model.addAttribute("review", service1.get(review_idx));
	}
	

	/**
	  * @Method 설명 : 상품 평 수정
	  * @Method Name : modify
	  * @Date : 2019. 12. 11.
	  * @작성자 : 곽우렬
	  * @param review_idx
	  * @param uploadFile
	  * @param review
	  * @param rttr
	  * @return
	  */
	@PostMapping("review/modify")
	public String modify(@RequestParam("review_idx") long review_idx,  MultipartFile uploadFile, ReviewVO review, RedirectAttributes rttr) {
		log.info("modify:" + review);
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (uploadFile.getSize() > 0) {
				review.setImg(UploadUtils.uploadFormPost(uploadFile, uploadPath));
			}
		
		if (service1.modify(review)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/shop/review/reviewget?review_idx=" + review_idx;
	}
	

	/**
	  * @Method 설명 : 상품평 삭제
	  * @Method Name : remove
	  * @Date : 2019. 12. 12.
	  * @작성자 : 곽우렬
	  * @param review_idx
	  * @param review
	  * @param rttr
	  * @return
	  */
	@PostMapping("review/remove")
	public String remove(@RequestParam("review_idx") long review_idx, ReviewVO review, RedirectAttributes rttr) {
		log.info("remove:" + review_idx);
		
		
		if (service1.remove(review_idx)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/shop/shop";
	}
	
	
	
	/**
	  * @Method 설명 : 상품 구매 페이지 호출
	  * @Method Name : Checkout
	  * @Date : 2019. 12. 08.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param model
	  * @return
	  */
	@GetMapping(value ="/shop/checkout")
	public String Checkout(@RequestParam("product_num") int product_num, Model model) {
		model.addAttribute("manage", service.get(product_num));
		log.info("Checkout");
		return "shop/checkout";
	}
	
	/**
	  * @Method 설명 : 상품 구매
	  * @Method Name : checkout
	  * @Date : 2019. 12. 08.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param reservation
	  * @return
	  */
	@PostMapping("shop/checkout")
	public String checkout(@RequestParam("product_num") int product_num, ReservationVO reservation) {
		
		log.info("register: " + reservation);
		service3.register(reservation);
		
		return "redirect:/shop/package?product_num=" + product_num;
	}
}
