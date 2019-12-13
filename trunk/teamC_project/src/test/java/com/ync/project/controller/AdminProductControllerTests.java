package com.ync.project.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.ync.project.domain.ProductVO;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


/**
  * @FileName	: AdminProductControllerTests.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 관리자 상품 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)

// Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
// Java Config
// @ContextConfiguration(classes = {
// org.zerock.config.RootConfig.class,
// org.zerock.config.ServletConfig.class} )
@Log4j
public class AdminProductControllerTests {

	// @Setter(onMethod_ = { @Autowired })
	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음

	private MockMvc mockMvc; // 필드 선언

	// @Befores는모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	//목록 테스트
//	@Test
//	public void testList() throws Exception {
//
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/admin/product_manage"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

	@Test
	public void testRegister() throws Exception {
		
		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//	      String Departure_date = "2020-02-08";
//	      String Arrival_date = "2020-02-09";
//	      Date departure_day = 2020-02-08;
//	      Date arrival_day = format.parse(Arrival_date);

	      String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/admin/registration")
	    		  .param("product_name", "사진없는여행")
//	    		  .param("departure_date", "departure_day")
//	    		  .param("arrival_date", "arrival_day")
	    		  .param("transportation", "대구버스")
	    		  .param("theme", "테마파크")
	    		  .param("costprice", "100000")
	    		  .param("itinerary", "1박2일")
	    		  .param("hotel_tour", "메인 이미지와 슬라이드 이미지가없습니다. 이유는 직접 보시라고 이미지를 삭제했습니다. 싫으면 뭐....")
	    		  .param("main_check", "x")
	    		  .param("country", "대한민국")
	    		  .param("city", "대구")
	    		  .param("main_img", "x")
	    		  .param("slide_img1", "x")
	    		  .param("slide_img2", "x")
	    		  .param("slide_img3", "x")
	    		  .param("slide_img4", "x"))
	    		  .andReturn().getModelAndView().getViewName();
		log.info("resultPage");

	}

//	@Test
//	public void tetGet() throws Exception {
//
//		log.info(mockMvc.perform(MockMvcRequestBuilders
//				.get("/board/get")
//				.param("bno", "2"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

//	@Test
//	public void testModify() throws Exception {
//
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders
//						.post("/board/modify").param("bno", "1")
//						.param("title", "수정된 테스트 새글 제목")
//						.param("content", "수정된 테스트 새글 내용")
//						.param("writer", "user00"))
//				.andReturn().getModelAndView().getViewName();
//
//		log.info(resultPage);
//
//	}

//	@Test
//	public void testRemove() throws Exception {
//		// 삭제전 데이터베이스에 게시물 번호 확인할 것
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove").param("bno", "25")).andReturn()
//				.getModelAndView().getViewName();
//
//		log.info(resultPage);
//	}

	//페이징
//	@Test
//	public void testListPaging() throws Exception {
//
//		log.info(mockMvc.perform(
//				MockMvcRequestBuilders.get("/admin/product_manage")
//				.param("pageNum", "1")
//				.param("amount", "10"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

}
