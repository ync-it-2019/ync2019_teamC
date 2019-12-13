package com.ync.project.mapper;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.ProductMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;
import com.ync.project.domain.ReviewVO;
//import com.ync.project.domain.Criteria;

import com.ync.project.front.mapper.ReviewMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ProductMapperTests.java
  * @Date		: 2019. 11. 01. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 mapper 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	   
	 String from1 = "2013-04-08 10:10:10";
	   
	   String from2 = "2013-04-08 10:10:10";
	   
	   String from3 = "2013-04-08 10:10:10";

	   
	   Calendar cal = new GregorianCalendar();

	
	//목록
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(review -> log.info(review));
//	}

	//등록
//	@Test
//	public void testInsert() throws ParseException {
//		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//	      String Departure_date = "2019-11-08";
//	      String Arrival_date = "2019-11-15";
//	      Date departure_day = format.parse(Departure_date);
//	      Date arrival_day = format.parse(Arrival_date);
//		ProductVO product = new ProductVO();
//		
//		product.setProduct_name("ㅁㄴㅇㄻㄴㅇㄻㄴ");
//		product.setCostprice(2400000);
//		product.setTheme("TV프로그램");
//		product.setTransportation("비행기");
//		product.setItinerary("6박7일");
//		product.setHotel_tour("호텔, 관광지정보1");
//		product.setCountry("영국");
//		product.setCity("런던");
//		product.setDeparture_date(departure_day);
//		product.setArrival_date(arrival_day);
//		product.setMain_check("X");
//		product.setMain_img("main7_img1");
//		product.setSlide_img1("slide7_img1");
//		product.setSlide_img2("slide7_img2");
//		product.setSlide_img3("slide7_img3");
//		product.setSlide_img4("slide7_img4");
//		mapper.insert(product);
//
//		log.info(product);
//	}

	//조회
//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		ProductVO product = mapper.read(1);
//
//		log.info(product);
//
//	}

	//삭제
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(7));
//	}

	//수정
//	@Test
//	public void testUpdate() throws ParseException {
//		
//      java.util.Date to1 = transFormat.parse(from1);
//      
//      java.util.Date to2 = transFormat.parse(from2);
//      
//      java.util.Date to3 = transFormat.parse(from3);
//      
//      Date date = new Date(cal.getTimeInMillis());
//		 
//		 
//		ProductVO product = new ProductVO();
//		
//		product.setProduct_num(37);
//		product.setProduct_name("맨체스터 유나이티드");
//		product.setTheme("축구");
//		product.setTransportation("비행기");
//		product.setItinerary("상품일정1");
//		product.setHotel_tour("호텔, 관광지정보1");
//		product.setCountry("영국");
//		product.setCity("런던");
//		product.setDeparture_date(date);
//		product.setArrival_date(date);
//		product.setMain_check("o");
//		product.setMain_img("");
//		product.setSlide_img1("");
//		product.setSlide_img2("");
//		product.setSlide_img3("");
//		product.setSlide_img4("");
//
//		int count = mapper.update(product);
//		log.info("UPDATE COUNT: " + count);
//
//	}

	//페이징
//	@Test
//	public void testPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//
//		List<ProductVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(review -> log.info(review));
//
//	}
	   
		//페이징
		@Test
		public void testPaging() {
	
			Criteria cri = new Criteria();
			
		    //10개씩 3페이지 
		    cri.setPageNum(1);
		    cri.setAmount(10);
	
	
			List<ProductVO> list = mapper.getListWithPaging2(cri);
	
			list.forEach(review -> log.info(review));
	
		}	   
	   
	
//	  @Test
//	  public void testSearch() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("키워드");
//	    cri.setType("T");
//
//	    List<BoardVO> list = mapper.getListWithPaging(cri);
//
//	    list.forEach(board -> log.info(board));
//	  }
	  
//	  @Test
//	  public void testTotal() {
//		Criteria cri = new Criteria();
//		cri.setKeyword("키워드");
//		cri.setType("T");
//		
//		int total = mapper.getTotalCount(cri);
//		
//		log.info("total:" + total);
//	  }
}
