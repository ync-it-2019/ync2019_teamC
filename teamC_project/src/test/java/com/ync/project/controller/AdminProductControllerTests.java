package com.ync.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
  * @프로그램 설명 :
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

//	@Test
//	public void testRegister() throws Exception {
//
//		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//	      String Departure_date = "2020-02-08";
//	      String Arrival_date = "2020-02-14";
//	      Date departure_day = format.parse(Departure_date);
//	      Date arrival_day = format.parse(Arrival_date);
//		ProductVO product = new ProductVO();
//		product.setProduct_num(4);
//		product.setCostprice(4860000);
//		product.setProduct_name("민이와함께하는 유럽여행");
//		product.setTheme("테마파크");
//		product.setTransportation("비행기");
//		product.setItinerary("6박7일");
//		product.setCountry("독일");
//		product.setCity("베를린");
//		product.setHotel_tour("민이와 함께떠나는 유럽여행 관리자가 강추하는 가이드와 함께 관광지와 놀이공원을"
//				+ "즐겨 보십시오. 재미없음 ");
//		product.setDeparture_date(departure_day);
//		product.setArrival_date(arrival_day);
//		product.setMain_check("x");
//		product.setMain_img("main_img1");
//		product.setSlide_img1("slide_img1");
//		product.setSlide_img2("slide_img2");
//		product.setSlide_img3("sldie_img3");
//		product.setSlide_img4("slide_img4");
//		mapper.insert(product);
//
//		log.info(product);
//
//	}

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

	@Test
	public void testListPaging() throws Exception {

		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/admin/product_manage")
				.param("pageNum", "1")
				.param("amount", "10"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}

}
