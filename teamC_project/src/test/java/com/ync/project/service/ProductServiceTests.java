package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ync.project.admin.service.ProductService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ProductServiceTests.java
  * @Date		: 2019. 11. 01. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 service 테스트
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
	
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	   
	 String from1 = "2013-04-08 10:10:10";
	   
	   String from2 = "2013-04-08 10:10:10";
	   
	   String from3 = "2013-04-08 10:10:10";

	   
	   Calendar cal = new GregorianCalendar();

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
//	      String Departure_date = "2019-11-27";
//	      String Arrival_date = "2019-11-30";
//	      Date departure_day = format.parse(Departure_date);
//	      Date arrival_day = format.parse(Arrival_date);
//		
//		ProductVO product = new ProductVO();
//		product.setCostprice(3000);
//		product.setProduct_name("안되요");
//		product.setTheme("TV프로그램");
//		product.setTransportation("비행기");
//		product.setItinerary("2박3일");
//		product.setCountry("한국");
//		product.setCity("대구");
//		product.setHotel_tour("post안되요");
//		product.setDeparture_date(departure_day);
//		product.setArrival_date(arrival_day);
//		product.setMain_check("x");
//		product.setMain_img("main9_img1");
//		product.setSlide_img1("slide9_img1");
//		product.setSlide_img2("slide9_img2");
//		product.setSlide_img3("sldie9_img3");
//		product.setSlide_img4("slide9_img4");
//		
//		service.register(product);
//		
//		log.info("생성된 게시물의 번호: " + product.getProduct_num());
//	}
	
	//목록 테스트
//	@Test
//	public void testGetList() {
//		
//		//service.getList().forEach(product -> log.info(product));
//		service.getListWithPaging(new Criteria(1, 10)).forEach(product -> log.info(product));
//	}
	
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
	@Test
	public void testUpdate() throws ParseException {
		
	      java.util.Date to1 = transFormat.parse(from1);
	      
	      java.util.Date to2 = transFormat.parse(from2);
	      
	      java.util.Date to3 = transFormat.parse(from3);
	      
	      Date date = new Date(cal.getTimeInMillis());
		
		ProductVO product = service.get(37);
		
		if (product == null) {
			return;
		}
		
		product.setProduct_name("asdfsdafsafasdfa");
		product.setTheme("축구");
		product.setTransportation("비행기");
		product.setItinerary("상품일정1");
		product.setHotel_tour("asdfsadfasdfsafaf");
		product.setCountry("영국");
		product.setCity("런던");
		product.setDeparture_date(date);
		product.setArrival_date(date);
		product.setMain_check("o");
		product.setMain_img("");
		product.setSlide_img1("");
		product.setSlide_img2("");
		product.setSlide_img3("");
		product.setSlide_img4("");
		log.info("MODIFY RESULT: " + service.modify(product));
	}
}
