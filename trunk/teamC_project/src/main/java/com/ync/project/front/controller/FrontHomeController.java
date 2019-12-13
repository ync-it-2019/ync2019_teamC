package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: HomeController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 메인 페이지 호출용 controller
  */

@Controller
@Log4j
public class FrontHomeController {
	
	/**
	  * @Method 설명 : front/index.jsp 호출
	  * @Method Name : home
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return call jsp view
	  */
	@GetMapping(value = "/")
	public String home() {

		log.info("Welcome home!");
	
		return "front/index";
	}
	

	/**
	  * @Method 설명 : 서울 정보 호출
	  * @Method Name : seoul_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/seoul-i")
	public String seoul_info() {

		log.info("Seoul-info!");
	
		return "info/seoul-i";
	}
	
	/**
	  * @Method 설명 : 부산 정보 호출
	  * @Method Name : busan_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/busan-i")
	public String busan_info() {

		log.info("Busan-info!");
	
		return "info/busan-i";
	}
	
	/**
	  * @Method 설명 : 경주 정보 호출
	  * @Method Name : gyeongju_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/gyeongju-i")
	public String gyeongju_info() {

		log.info("Gyeongju-info!");
	
		return "info/gyeongju-i";
	}
	

	/**
	  * @Method 설명 : 전주 정보 호출
	  * @Method Name : jeonju_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/jeonju-i")
	public String jeonju_info() {

		log.info("Jeonju-info!");
	
		return "info/jeonju-i";
	}
	

	/**
	  * @Method 설명 : 일본 정보 호출
	  * @Method Name : japan_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/japan-i")
	public String japan_info() {

		log.info("Japan-info!");
	
		return "info/japan-i";
	}
	

	/**
	  * @Method 설명 : 중국 정보 호출
	  * @Method Name : china_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/china-i")
	public String china_info() {

		log.info("China-info!");
	
		return "info/china-i";
	}
	

	/**
	  * @Method 설명 : 태국 정보 호출
	  * @Method Name : tai_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/tai-i")
	public String tai_info() {

		log.info("Tai-info!");
	
		return "info/tai-i";
	}
	

	/**
	  * @Method 설명 : 홍콩 정보 호출
	  * @Method Name : hongkong_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/hongkong-i")
	public String hongkong_info() {

		log.info("Hongkong-info!");
	
		return "info/hongkong-i";
	}
	

	/**
	  * @Method 설명 : 영국 정보 호출
	  * @Method Name : england_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/england-i")
	public String england_info() {

		log.info("England-info!");
	
		return "info/england-i";
	}
	

	/**
	  * @Method 설명 : 이탈리아 정보 호출
	  * @Method Name : ita_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/ita-i")
	public String ita_info() {

		log.info("Ita-info!");
	
		return "info/ita-i";
	}
	

	/**
	  * @Method 설명 : 프랑스 정보 호출
	  * @Method Name : france_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/france-i")
	public String france_info() {

		log.info("France-info!");
	
		return "info/france-i";
	}
	

	/**
	  * @Method 설명 : 독일 정보 호출
	  * @Method Name : ger_info
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/info/ger-i")
	public String ger_info() {

		log.info("Ger-info!");
	
		return "info/ger-i";
	}
	

	/**
	  * @Method 설명 : 서울 관광지 호출
	  * @Method Name : seoul_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/seoul-a")
	public String seoul_tourlist() {

		log.info("Seoul-tourlist!");
	
		return "tourlist/seoul-a";
	}
	

	/**
	  * @Method 설명 : 부산 관광지 호출
	  * @Method Name : busan_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/busan-a")
	public String busan_tourlist() {

		log.info("Busan-tourlist!");
	
		return "tourlist/busan-a";
	}
	
	

	/**
	  * @Method 설명 : 경주 관광지 호출
	  * @Method Name : gyeongju_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/gyeongju-a")
	public String gyeongju_tourlist() {

		log.info("Gyeongju-tourlist!");
	
		return "tourlist/gyeongju-a";
	}
	

	/**
	  * @Method 설명 : 전주 관광지 호출
	  * @Method Name : jeonju_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/jeonju-a")
	public String jeonju_tourlist() {

		log.info("Jeonju-tourlist!");
	
		return "tourlist/jeonju-a";
	}
	

	/**
	  * @Method 설명 : 일본 관광지 호출
	  * @Method Name : japan_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/japan-a")
	public String japan_tourlist() {

		log.info("Japan-tourlist!");
	
		return "tourlist/japan-a";
	}
	

	/**
	  * @Method 설명 : 중국 관광지 호출
	  * @Method Name : china_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/china-a")
	public String china_tourlist() {

		log.info("China-tourlist!");
	
		return "tourlist/china-a";
	}
	

	/**
	  * @Method 설명 : 태국 관광지 호출
	  * @Method Name : tai_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/tai-a")
	public String tai_tourlist() {

		log.info("Tai-tourlist!");
	
		return "tourlist/tai-a";
	}
	

	/**
	  * @Method 설명 : 홍콩 관광지 호출
	  * @Method Name : hongkong_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/hongkong-a")
	public String hongkong_tourlist() {

		log.info("Hongkong-tourlist!");
	
		return "tourlist/hongkong-a";
	}
	

	/**
	  * @Method 설명 : 영국 관광지 호출
	  * @Method Name : england_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/england-a")
	public String england_tourlist() {

		log.info("England-tourlist!");
	
		return "tourlist/england-a";
	}
	

	/**
	  * @Method 설명 : 이탈리아 관광지 호출
	  * @Method Name : ita_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/ita-a")
	public String ita_tourlist() {

		log.info("Ita-tourlist!");
	
		return "tourlist/ita-a";
	}
	

	/**
	  * @Method 설명 : 프랑스 관광지 호출
	  * @Method Name : france_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/france-a")
	public String france_tourlist() {

		log.info("France-tourlist!");
	
		return "tourlist/france-a";
	}
	

	/**
	  * @Method 설명 : 독일 관광지 호출
	  * @Method Name : ger_tourlist
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/tourlist/ger-a")
	public String ger_tourlist() {

		log.info("Ger-tourlist!");
	
		return "tourlist/ger-a";
	}
	

	/**
	  * @Method 설명 : 서울 맛집 호출
	  * @Method Name : seoul_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/seoul-f")
	public String seoul_restaurant() {

		log.info("Seoul-restaurant!");
	
		return "restaurant/seoul-f";
	}
	

	/**
	  * @Method 설명 : 부산 맛집 호출
	  * @Method Name : busan_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/busan-f")
	public String busan_restaurant() {

		log.info("Busan-restaurant!");
	
		return "restaurant/busan-f";
	}
	
	

	/**
	  * @Method 설명 : 경주 맛집 호출
	  * @Method Name : gyeongju_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/gyeongju-f")
	public String gyeongju_restaurant() {

		log.info("Gyeongju-restaurant!");
	
		return "restaurant/gyeongju-f";
	}
	

	/**
	  * @Method 설명 : 전주 맛집 호출
	  * @Method Name : jeonju_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/jeonju-f")
	public String jeonju_restaurant() {

		log.info("Jeonju-restaurant!");
	
		return "restaurant/jeonju-f";
	}
	

	/**
	  * @Method 설명 : 일본 맛집 호출
	  * @Method Name : japan_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/japan-f")
	public String japan_restaurant() {

		log.info("Japan-restaurant!");
	
		return "restaurant/japan-f";
	}
	

	/**
	  * @Method 설명 : 중국 맛집 호출
	  * @Method Name : china_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/china-f")
	public String china_restaurant() {

		log.info("China-restaurant!");
	
		return "restaurant/china-f";
	}
	

	/**
	  * @Method 설명 : 태국 맛집 호출
	  * @Method Name : tai_restaurant
	  * @Date : 2019. 10. 20.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/tai-f")
	public String tai_restaurant() {

		log.info("Tai-restaurant!");
	
		return "restaurant/tai-f";
	}
	

	/**
	  * @Method 설명 : 홍콩 맛집 호출
	  * @Method Name : hongkong_restaurant
	  * @Date : 2019. 10. 21.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/hongkong-f")
	public String hongkong_restaurant() {

		log.info("Hongkong-restaurantt!");
	
		return "restaurant/hongkong-f";
	}
	

	/**
	  * @Method 설명 : 영국 맛집 호출
	  * @Method Name : england_restaurant
	  * @Date : 2019. 10. 21.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/england-f")
	public String england_restaurant() {

		log.info("England-restaurant!");
	
		return "restaurant/england-f";
	}
	

	/**
	  * @Method 설명 : 이탈리아 맛집 호출
	  * @Method Name : ita_restaurant
	  * @Date : 2019. 10. 21.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/ita-f")
	public String ita_restaurant() {

		log.info("Ita-restaurant!");
	
		return "restaurant/ita-f";
	}
	

	/**
	  * @Method 설명 : 프랑스 맛집 호출
	  * @Method Name : france_restaurant
	  * @Date : 2019. 10. 21.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/france-f")
	public String france_restaurant() {

		log.info("France-restaurant!");
	
		return "restaurant/france-f";
	}
	

	/**
	  * @Method 설명 : 독일 맛집 호출
	  * @Method Name : ger_restaurant
	  * @Date : 2019. 10. 21.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/restaurant/ger-f")
	public String ger_restaurant() {

		log.info("Ger-restaurant!");
	
		return "restaurant/ger-f";
	}
		

	/**
	  * @Method 설명 : 회원가입 호출
	  * @Method Name : get_register
	  * @Date : 2019. 10. 21.
	  * @작성자 : 곽우렬
	  * @return
	  */
	@GetMapping(value = "/login/register")
	
	public String get_register() {
		
		log.info("register");
		
		return "login/register";
	}


	/**
	  * @Method 설명 : 자주 묻는 질문 호출
	  * @Method Name : get_indexfaq
	  * @Date : 2019. 10. 21.
	  * @작성자 : 이준희
	  * @return
	  */
	@GetMapping(value = "/faq/index_faq")
	
	public String get_indexfaq() {
		
		log.info("faq");
		
		return "faq/index_faq";
	}

 }
