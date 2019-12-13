package com.ync.project.admin.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.util.UploadUtils;


import com.ync.project.admin.service.ProductService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;

import lombok.extern.log4j.Log4j;


/**
  * @FileName	: AdminProductController.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 관리자 상품목록 상품생성 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
//@AllArgsConstructor
public class AdminProductController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	
	@Autowired
	private ProductService service;
	Calendar cal = new GregorianCalendar();
	
	/**
	  * @Method 설명 : 관리자화면 상품 목록 불러오기
	  * @Method Name : manage
	  * @Date : 2019. 11. 01.
	  * @작성자 : 곽우렬
	  * @param cri
	  * @param model
	  */
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/product_manage")
	public void manage(Criteria cri, Model model) {
		log.info("manage : " + cri);
		model.addAttribute("manage", service.getListWithPaging(cri));
		
		 int total = service.getTotal(cri);
	      
	      log.info("total: " + total);
	      
	      model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, total));
	}
	

	/**
	  * @Method 설명 : 관리자화면 상품 등록폼 불러오기
	  * @Method Name : register
	  * @Date : 2019. 11. 01.
	  * @작성자 : 곽우렬
	  */
	@GetMapping("/registration")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void register() {
		log.info("Registration!");
	
	}
	
	/**
	  * @Method 설명 :관리자 화면 관리자 상품 등록
	  * @Method Name : register
	  * @Date : 2019. 12. 01.
	  * @작성자 : 곽우렬
	  * @param product
	  * @param uploadFile
	  * @return
	  */
	@PostMapping("/registration")
	public String register(ProductVO product, MultipartFile[] uploadFile) {
		Date date = new Date(cal.getTimeInMillis());
		log.info("register: " + product);
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
	
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					product.setMain_img(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					product.setSlide_img1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 2:
					product.setSlide_img2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 3:
					product.setSlide_img3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					product.setSlide_img4(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
				
			}
			index++;
		}
		service.register(product);
		return "redirect:/admin/product_manage";
	}
	

	/**
	  * @Method 설명 : 관리자화면 상품 상세화면 수정 폼 불러오기
	  * @Method Name : productget
	  * @Date : 2019. 12. 11.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param model
	  */
	@GetMapping({"/productget", "/productmodify"})
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void productget(@RequestParam("product_num") int product_num, Model model) {
		log.info("Get! or modify");
		model.addAttribute("product", service.get(product_num));
	
	}
	

	/**
	  * @Method 설명 : 관리자 화면 상품 수정
	  * @Method Name : productmodify
	  * @Date : 2019. 12. 11.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param product
	  * @param uploadFile
	  * @param rttr
	  * @return
	  */
	@PostMapping("/productmodify")
	public String productmodify(@RequestParam("product_num") int product_num, ProductVO product,MultipartFile[] uploadFile, RedirectAttributes rttr) {
		Date date = new Date(cal.getTimeInMillis());
		log.info("modify: " + product);
		
		
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
	
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					product.setMain_img(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					product.setSlide_img1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 2:
					product.setSlide_img2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 3:
					product.setSlide_img3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					product.setSlide_img4(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
				
			}
			index++;
		}
		if (service.modify(product)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/productget?product_num=" + product_num;
	}
	

	/**
	  * @Method 설명 : 관리자화면 상품 삭제
	  * @Method Name : remove
	  * @Date : 2019. 12. 12.
	  * @작성자 : 곽우렬
	  * @param product_num
	  * @param product
	  * @param rttr
	  * @return
	  */
	@PostMapping("/remove")
	public String remove(@RequestParam("product_num") int product_num, ProductVO product, RedirectAttributes rttr) {
		log.info("remove:" + product_num);
		
		
		if (service.remove(product_num)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/product_manage";
	}
	
}
