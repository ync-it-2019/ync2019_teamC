package com.ync.project.mapper;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
  * @프로그램 설명 :
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	//목록
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(review -> log.info(review));
//	}

	//등록
//	@Test
//	public void testInsert() throws ParseException {
//		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//	      String Departure_date = "2019-12-08";
//	      String Arrival_date = "2019-12-18";
//	      Date deparutre_day = format.parse(Departure_date);
//	      Date arrival_day = format.parse(Arrival_date);
//		ProductVO product = new ProductVO();
//		product.setProduct_num(3);
//		product.setCostprice(4530000);
//		product.setProduct_name("최초의 유럽야구");
//		product.setTheme("야구");
//		product.setTransportation("배");
//		product.setItinerary("상품일정3");
//		product.setCountry("프랑스");
//		product.setCity("파리");
//		product.setHotel_tour("호텔, 관광지정보3");
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
//		log.info("DELETE COUNT: " + mapper.delete(1));
//	}

	//수정
//	@Test
//	public void testUpdate() throws ParseException {
//		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//	      String Departure_date = "2019-11-08";
//	      String Arrival_date = "2019-11-14";
//	      Date departure_day = format.parse(Departure_date);
//	      Date arrival_day = format.parse(Arrival_date);
//		ProductVO product = new ProductVO();
//		
//		product.setProduct_num(1);
//		product.setProduct_name("맨체스터 유나이티드");
//		product.setTheme("축구");
//		product.setTransportation("비행기");
//		product.setItinerary("상품일정1");
//		product.setHotel_tour("호텔, 관광지정보1");
//		product.setCountry("영국");
//		product.setCity("런던");
//		product.setDeparture_date(departure_day);
//		product.setArrival_date(arrival_day);
//		product.setMain_check("o");
//		product.setMain_img("main_img1");
//		product.setSlide_img1("slide_img1");
//		product.setSlide_img2("slide_img2");
//		product.setSlide_img3("slide_img3");
//		product.setSlide_img4("slide_img4");
//
//		int count = mapper.update(product);
//		log.info("UPDATE COUNT: " + count);
//
//	}

	//페이징
	@Test
	public void testPaging() {

		Criteria cri = new Criteria();
		
	    //10개씩 3페이지 
	    cri.setPageNum(1);
	    cri.setAmount(10);


		List<ProductVO> list = mapper.getListWithPaging(cri);

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
