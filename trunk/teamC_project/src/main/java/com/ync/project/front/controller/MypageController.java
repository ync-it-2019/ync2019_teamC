package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.MemberService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MypageService;

import lombok.extern.log4j.Log4j;

/**
 * @FileName	: mypage.jsp 호출
 * @Date		: 2019. 12. 11. 
 * @Author		: 이준희
 * @프로그램 설명 : call jsp view
 */

@Controller
@Log4j
@RequestMapping("/front/*")
public class MypageController {

	@Autowired 
	private MypageService mypage;
	@Autowired
	private MemberService service;
	
	/**
	  * @Method 설명 : 마이페이지 호출
	  * @Method Name : mypage
	  * @Date : 2019. 12. 11.
	  * @작성자 : 이준희
	  * @param userid
	  * @param model
	  * @param cri
	  */
	@GetMapping("/mypage")
	public void mypage(@RequestParam("userid") String userid, Model model, Criteria cri) {
		log.info("mypage/get");
		
		int total = mypage.getTotal(cri);
		
		model.addAttribute("mypage", mypage.getListWithPaging(cri, userid));
		model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO(cri, total));
	}
	

 /**
  * @Method 설명 : 회원 정보 수정 폼 호출
  * @Method Name : modify
  * @Date : 2019. 12. 13.
  * @작성자 : 이준희
  * @param userid
  * @param model
  */
@GetMapping("/modify")
 public void modify(@RequestParam("userid") String userid, Model model) {
	 log.info("modify/get");
	 model.addAttribute("modify", service.get(userid));
 }

 /**
  * @Method 설명 : 회원정보 수정
  * @Method Name : modifyInfo
  * @Date : 2019. 12. 13.
  * @작성자 : 이준희
  * @param userid
  * @param member
  * @param rttr
  * @return
  */
@PostMapping("/modify")
 public String modifyInfo(@RequestParam("userid") String userid, MemberVO member, RedirectAttributes rttr) {
	 log.info("modify/info");
	
		if (service.modify(member)) {
			rttr.addFlashAttribute("result", "success");
		}
	 
	 return "redirect:/front/mypage?userid=" + userid;
 }
}
