package com.ync.project.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReviewVO;
//import com.ync.project.domain.Criteria;

import com.ync.project.front.mapper.ReviewMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ReviewMapperTests.java
  * @Date		: 2019. 10. 30. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품평 mapper 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ReviewMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;
	
	//목록1
//	@Test
//	public void testGetList() {
//		mapper.getList1().forEach(review -> log.info(review));
//	}

	//등록
//	@Test
//	public void testInsert() {
//
//		ReviewVO review = new ReviewVO();
//		review.setTitle("Test1");
//		review.setContent("Test1");
//		review.setUserid("kwr123");
//		review.setProduct_num(6);
//		review.setImg("img1");
//
//		mapper.insert(review);
//
//		log.info(review);
//	}

	//등록2
//	@Test
//	public void testInsertSelectKey() {
//
//		ReviewVO review = new ReviewVO();
//		review.setTitle("TestTitle7");
//		review.setContent("TestContent7");
//		review.setUserid("kwr123");
//		review.setProduct_num(2);
//		review.setImg("img7");
//		
//		mapper.insertSelectKey(review);
//
//		log.info(review);
//	}

	//조회1
	@Test
	public void testRead() {

		// 존재하는 게시물 번호로 테스트
		ReviewVO review = mapper.read((long) 104);

		log.info(review);

	}
	
//	//목록2
//	@Test
//	public void testGetList() {
//		mapper.getList2(1).forEach(review -> log.info(review));
//	}

	//삭제
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete((long) 57));
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
//		List<ReviewVO> list = mapper.getListWithPaging(cri, 1);
//
//		list.forEach(review -> log.info(review));
//
//	}
	
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
