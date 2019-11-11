package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ync.project.domain.ReviewVO;
import com.ync.project.front.service.ReviewService;
import com.ync.project.admin.service.ProductService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ProductServiceTests.java
  * @Date		: 2019. 11. 01. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ProductServiceTests {
	
	@Autowired
	//@Setter(onMethod_ = { @Autowired })
	private ProductService service;

	//동작테스트
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
	//등록 테스트
//	@Test
//	public void testRegister() throws ParseException {
//		
//		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//	      String Departure_date = "2020-01-08";
//	      String Arrival_date = "2020-01-18";
//	      Date departure_day = format.parse(Departure_date);
//	      Date arrival_day = format.parse(Arrival_date);
//		
//		ProductVO product = new ProductVO();
//		product.setProduct_num(4);
//		product.setCostprice(6532000);
//		product.setProduct_name("일본 디즈니랜드");
//		product.setTheme("테마파크");
//		product.setTransportation("배");
//		product.setItinerary("상품일정4");
//		product.setCountry("일본");
//		product.setCity("도쿄");
//		product.setHotel_tour("호텔, 관광지정보4");
//		product.setDeparture_date(departure_day);
//		product.setArrival_date(arrival_day);
//		product.setMain_check("o");
//		product.setMain_img("main_img1");
//		product.setSlide_img1("slide_img1");
//		product.setSlide_img2("slide_img2");
//		product.setSlide_img3("sldie_img3");
//		product.setSlide_img4("slide_img4");
//		
//		service.register(product);
//		
//		log.info("생성된 게시물의 번호: " + product.getProduct_num());
//	}
	
	//목록 테스트
	@Test
	public void testGetList() {
		
		//service.getList().forEach(product -> log.info(product));
		service.getListWithPaging(new Criteria(1, 10)).forEach(product -> log.info(product));
	}
	
	//조회 테스트
//	@Test
//	public void testGet() {
//		
//		log.info(service.get(2));
//	}
	
	//삭제 테스트
//	@Test
//	public void testDelete() {
//		
//		//게시물 번호의 존재여부를 확인하고 테스트를할 것
//		log.info("REMOVE RESULT: " + service.remove(1);
//	}
	
	//수정 테스트
//	@Test
//	public void testUpdate() {
//		
//		ProductVO product = service.get(1);
//		
//		if (product == null) {
//			return;
//		}
//		
//		product.setTitle("Test2");
//		product.setContent("Test_content2");
//		log.info("MODIFY RESULT: " + service.modify(product));
//	}
}
