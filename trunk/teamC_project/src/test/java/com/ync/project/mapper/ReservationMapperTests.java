package com.ync.project.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.ReservationMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReservationVO;
import com.ync.project.domain.ReviewVO;
//import com.ync.project.domain.Criteria;

import com.ync.project.front.mapper.ReviewMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/**
  * @FileName	: ReservationMapperTests.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ReservationMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ReservationMapper mapper;
	
	//목록
	@Test
	public void testGetList() {
		mapper.getList().forEach(reservation -> log.info(reservation));
	}

	//등록
//	@Test
//	public void testInsert() {
//
//		ReservationVO reservation = new ReservationVO();
//		reservation.setPrice(3500000);
//		reservation.setStatus("예약");
//		reservation.setProduct_num(1);
//		reservation.setUserid("kwr123");
//
//		mapper.insert(reservation);
//
//		log.info(reservation);
//	}

	//등록2
//	@Test
//	public void testInsertSelectKey() {
//
//		ReservationVO reservation = new ReservationVO();
//		reservation.setPrice(6500000);
//		reservation.setStatus("완료");
//		reservation.setUserid("su789");
//		reservation.setProduct_num(4);
//		
//		mapper.insertSelectKey(reservation);
//
//		log.info(reservation);
//	}

//	//조회
//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		ReviewVO board = mapper.read((long) 43);
//
//		log.info(board);
//
//	}

	//삭제
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete((long) 43));
//	}

	//수정
//	@Test
//	public void testUpdate() {
//
//		ReviewVO review = new ReviewVO();
//		review.setReview_idx((long) 46);
//		review.setTitle("수정된 제목");
//		review.setContent("수정된 내용");
//		review.setImg("img1");
//
//		int count = mapper.update(review);
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


		List<ReservationVO> list = mapper.getListWithPaging(cri);

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
