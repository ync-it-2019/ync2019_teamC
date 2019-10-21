package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: HomeController.java
  * @Date		: 2019. 10. 16. 
  * @Author		: 정진우
  * @프로그램 설명 : 메인 페이지 호출용 controller
  */

@Controller
@Log4j
public class FrontHomeController {
	
	/**
	  * @Method 설명 : front/index.jsp 호출
	  * @Method Name : home
	  * @Date : 2019. 10. 16.
	  * @작성자 : 정진우
	  * @return call jsp view
	  */
	@GetMapping(value = "/")
	public String home() {

		log.info("Welcome home!");
	
		return "front/index";
	}
	
	/**
	  * @FileName	: info/seoul-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/seoul-i")
	public String seoul_info() {

		log.info("Seoul-info!");
	
		return "info/seoul-i";
	}
	
	/**
	  * @FileName	: info/busan-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/busan-i")
	public String busan_info() {

		log.info("Busan-info!");
	
		return "info/busan-i";
	}
	
	/**
	  * @FileName	: info/gyeongju-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/gyeongju-i")
	public String gyeongju_info() {

		log.info("Gyeongju-info!");
	
		return "info/gyeongju-i";
	}
	
	/**
	  * @FileName	: info/jeonju-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/jeonju-i")
	public String jeonju_info() {

		log.info("Jeonju-info!");
	
		return "info/jeonju-i";
	}
	
	/**
	  * @FileName	: info/japan-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/japan-i")
	public String japan_info() {

		log.info("Japan-info!");
	
		return "info/japan-i";
	}
	
	/**
	  * @FileName	: info/china-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/china-i")
	public String china_info() {

		log.info("China-info!");
	
		return "info/china-i";
	}
	
	/**
	  * @FileName	: info/tai-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/tai-i")
	public String tai_info() {

		log.info("Tai-info!");
	
		return "info/tai-i";
	}
	
	/**
	  * @FileName	: info/hongkong-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/hongkong-i")
	public String hongkong_info() {

		log.info("Hongkong-info!");
	
		return "info/hongkong-i";
	}
	
	/**
	  * @FileName	: info/england-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/england-i")
	public String england_info() {

		log.info("England-info!");
	
		return "info/england-i";
	}
	
	/**
	  * @FileName	: info/ita-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/ita-i")
	public String ita_info() {

		log.info("Ita-info!");
	
		return "info/ita-i";
	}
	
	/**
	  * @FileName	: info/france-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/france-i")
	public String france_info() {

		log.info("France-info!");
	
		return "info/france-i";
	}
	
	/**
	  * @FileName	: info/ger-i.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/info/ger-i")
	public String ger_info() {

		log.info("Ger-info!");
	
		return "info/ger-i";
	}
	
	/**
	  * @FileName	: info/seoul-a.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/seoul-a")
	public String seoul_tourlist() {

		log.info("Seoul-tourlist!");
	
		return "tourlist/seoul-a";
	}
	
	/**
	  * @FileName	: info/busan-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/busan-a")
	public String busan_tourlist() {

		log.info("Busan-tourlist!");
	
		return "tourlist/busan-a";
	}
	
	
	/**
	  * @FileName	: info/gyeongju-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/gyeongju-a")
	public String gyeongju_tourlist() {

		log.info("Gyeongju-tourlist!");
	
		return "tourlist/gyeongju-a";
	}
	
	/**
	  * @FileName	: info/jeonju-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/jeonju-a")
	public String jeonju_tourlist() {

		log.info("Jeonju-tourlist!");
	
		return "tourlist/jeonju-a";
	}
	
	/**
	  * @FileName	: info/japan-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/japan-a")
	public String japan_tourlist() {

		log.info("Japan-tourlist!");
	
		return "tourlist/japan-a";
	}
	
	/**
	  * @FileName	: info/china-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/china-a")
	public String china_tourlist() {

		log.info("China-tourlist!");
	
		return "tourlist/china-a";
	}
	
	/**
	  * @FileName	: info/tai-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/tai-a")
	public String tai_tourlist() {

		log.info("Tai-tourlist!");
	
		return "tourlist/tai-a";
	}
	
	/**
	  * @FileName	: info/hongkong-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/hongkong-a")
	public String hongkong_tourlist() {

		log.info("Hongkong-tourlist!");
	
		return "tourlist/hongkong-a";
	}
	
	/**
	  * @FileName	: info/england-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/england-a")
	public String england_tourlist() {

		log.info("England-tourlist!");
	
		return "tourlist/england-a";
	}
	
	/**
	  * @FileName	: info/ita-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/ita-a")
	public String ita_tourlist() {

		log.info("Ita-tourlist!");
	
		return "tourlist/ita-a";
	}
	
	/**
	  * @FileName	: info/france-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/france-a")
	public String france_tourlist() {

		log.info("France-tourlist!");
	
		return "tourlist/france-a";
	}
	
	/**
	  * @FileName	: info/ger-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/tourlist/ger-a")
	public String ger_tourlist() {

		log.info("Ger-tourlist!");
	
		return "tourlist/ger-a";
	}
	
	/**
	  * @FileName	: info/seoul-f.jsp 호출
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/seoul-f")
	public String seoul_restaurant() {

		log.info("Seoul-restaurant!");
	
		return "restaurant/seoul-f";
	}
	
	/**
	  * @FileName	: info/busan-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/busan-f")
	public String busan_restaurant() {

		log.info("Busan-restaurant!");
	
		return "restaurant/busan-f";
	}
	
	
	/**
	  * @FileName	: info/gyeongju-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/gyeongju-f")
	public String gyeongju_restaurant() {

		log.info("Gyeongju-restaurant!");
	
		return "restaurant/gyeongju-f";
	}
	
	/**
	  * @FileName	: info/jeonju-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/jeonju-f")
	public String jeonju_restaurant() {

		log.info("Jeonju-restaurant!");
	
		return "restaurant/jeonju-f";
	}
	
	/**
	  * @FileName	: info/japan-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/japan-f")
	public String japan_restaurant() {

		log.info("Japan-tourlist!");
	
		return "restaurant/japan-f";
	}
	
	/**
	  * @FileName	: info/china-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/china-f")
	public String china_restaurant() {

		log.info("China-restaurant!");
	
		return "restaurant/china-f";
	}
	
	/**
	  * @FileName	: info/tai-a.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/tai-f")
	public String tai_restaurant() {

		log.info("Tai-restaurant!");
	
		return "restaurant/tai-f";
	}
	
	/**
	  * @FileName	: info/hongkong-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/hongkong-f")
	public String hongkong_restaurant() {

		log.info("Hongkong-restaurantt!");
	
		return "restaurant/hongkong-f";
	}
	
	/**
	  * @FileName	: info/england-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/england-f")
	public String england_restaurant() {

		log.info("England-restaurant!");
	
		return "restaurant/england-f";
	}
	
	/**
	  * @FileName	: info/ita-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/ita-f")
	public String ita_restaurant() {

		log.info("Ita-restaurant!");
	
		return "restaurant/ita-f";
	}
	
	/**
	  * @FileName	: info/france-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/france-f")
	public String france_restaurant() {

		log.info("France-restaurant!");
	
		return "restaurant/france-f";
	}
	
	/**
	  * @FileName	: info/ger-f.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 곽우렬
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/restaurant/ger-f")
	public String ger_restaurant() {

		log.info("Ger-restaurant!");
	
		return "restaurant/ger-f";
	}
	
	/**
	  * @FileName	: login/login.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 이준희
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/login/login")
	
	public String get_login() {
		
		log.info("login");
		
		return "login/login";
	}
	/**
	  * @FileName	: faq/indexfaq.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 이준희
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/faq/index_faq")
	
	public String get_indexfaq() {
		
		log.info("faq");
		
		return "faq/index_faq";
	}
	/**
	  * @FileName	: shop/shop.jsp 호출
	  * @Date		: 2019. 10. 21. 
	  * @Author		: 이준희
	  * @프로그램 설명 : call jsp view
	  */
	@GetMapping(value = "/shop/shop")
	
	public String get_shop() {
		
		log.info("shop");
		
		return "shop/shop";
	}
	
}
