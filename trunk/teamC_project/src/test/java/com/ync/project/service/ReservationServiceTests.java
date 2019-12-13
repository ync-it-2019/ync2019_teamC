package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ync.project.domain.ReviewVO;
import com.ync.project.front.service.ReviewService;
import com.ync.project.admin.service.ReservationService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReservationVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ReservationServiceTests.java
  * @Date		: 2019. 10. 31. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 구매관리 service 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ReservationServiceTests {
	
	@Autowired
	//@Setter(onMethod_ = { @Autowired })
	private ReservationService service;

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
//		ReservationVO reservation = new ReservationVO();
//		reservation.setPrice(1000000);
//		reservation.setStatus("완료");
//		reservation.setProduct_num(3);
//		reservation.setUserid("qwe4569");
//		
//		service.register(reservation);
//		
//		log.info("생성된 게시물의 번호: " + reservation.getRe_idx());
//	}
	
	//목록 테스트
	@Test
	public void testGetList() {
		
		//service.getList().forEach(review -> log.info(review));
		service.getListWithPaging(new Criteria(1, 10)).forEach(board -> log.info(board));
	}
	
	//조회 테스트
//	@Test
//	public void testGet() {
//		
//		log.info(service.get((long)1));
//	}
	
	//삭제 테스트
//	@Test
//	public void testDelete() {
//		
//		//게시물 번호의 존재여부를 확인하고 테스트를할 것
//		log.info("REMOVE RESULT: " + service.remove((long) 46));
//	}
	
	//수정 테스트
//	@Test
//	public void testUpdate() {
//		
//		ReservationVO reservation = service.get((long) 50);
//		
//		if (reservation == null) {
//			return;
//		}
//		
//		reservation.setTitle("Test2");
//		reservation.setContent("Test_content2");
//		log.info("MODIFY RESULT: " + service.modify(reservation));
//	}
	
	
}
