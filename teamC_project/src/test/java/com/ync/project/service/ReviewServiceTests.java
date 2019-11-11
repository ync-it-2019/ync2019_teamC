package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ync.project.domain.ReviewVO;
import com.ync.project.front.service.ReviewService;
import com.ync.project.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ReviewServiceTests.java
  * @Date		: 2019. 10. 31. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ReviewServiceTests {
	
	@Autowired
	//@Setter(onMethod_ = { @Autowired })
	private ReviewService service;

	//동작테스트
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
	//등록 테스트
//	@Test
//	public void testRegister() {
//		
//		ReviewVO review = new ReviewVO();
//		review.setTitle("Test_Title13");
//		review.setContent("Test_content13");
//		review.setUserid("msa1587");
//		review.setProduct_num(1);
//		review.setImg("img7");
//		
//		service.register(review);
//		
//		log.info("생성된 게시물의 번호: " + review.getReview_idx());
//	}
	
	//목록 테스트1
//	@Test
//	public void testGetList() {
//		
//		service.getList1().forEach(review -> log.info(review));
//		//service.getListWithPaging(new Criteria(1, 10)).forEach(review -> log.info(review));
//	}
	
	//목록 테스트2
	@Test
	public void testGetList() {
		
		//service.getList2(1).forEach(review -> log.info(review));
		service.getListWithPaging(new Criteria(2, 10), 1).forEach(review -> log.info(review));
	}
	
	//조회 테스트1
//	@Test
//	public void testGet() {
//		
//		log.info(service.get1((long) 52));
//	}
	
	
	//삭제 테스트
//	@Test
//	public void testDelete() {
//		
//		//게시물 번호의 존재여부를 확인하고 테스트를할 것
//		log.info("REMOVE RESULT: " + service.remove((long) 48));
//	}
	
	//수정 테스트
//	@Test
//	public void testUpdate() {
//		
//		ReviewVO review = service.get((long) 50);
//		
//		if (review == null) {
//			return;
//		}
//		
//		review.setTitle("Test2");
//		review.setContent("Test_content2");
//		log.info("MODIFY RESULT: " + service.modify(review));
//	}
}
