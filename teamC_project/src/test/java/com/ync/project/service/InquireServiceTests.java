package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ync.project.domain.ReviewVO;
import com.ync.project.front.service.InquireService;
import com.ync.project.front.service.ReviewService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: InquireServiceTests.java
  * @Date		: 2019. 10. 31. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 문의 service 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class InquireServiceTests {
	
	@Autowired
	//@Setter(onMethod_ = { @Autowired })
	private InquireService service;

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
//		InquireVO inquire = new InquireVO();
//		inquire.setProduct_num(1);
//		inquire.setTitle("Test_Title26");
//		inquire.setContent("Test_Contnet26");
//		inquire.setUserid("msd4569");
//		inquire.setAnswer_check("x");
//		inquire.setAnswer("");
//		
//		service.register(inquire);
//		
//		log.info("생성된 게시물의 번호: " + inquire.getQ_idx());
//	}
	
	//목록 테스트
//	@Test
//	public void testGetList() {
//		
//		//service.getList().forEach(inquire -> log.info(inquire));
//		service.getListWithPaging(new Criteria(1, 10)).forEach(inquire -> log.info(inquire));
//	}
	
	//목록 테스트2
//	@Test
//	public void testGetList() {
//		
//		//service.getList().forEach(inquire -> log.info(inquire));
//		service.getListWithPaging2(new Criteria(1, 10), 1).forEach(inquire -> log.info(inquire));
//	}
	
	//조회 테스트
//	@Test
//	public void testGet() {
//		
//		log.info(service.get((long) 43));
//	}
	
	//삭제 테스트
//	@Test
//	public void testDelete() {
//		
//		//게시물 번호의 존재여부를 확인하고 테스트를할 것
//		log.info("REMOVE RESULT: " + service.remove((long) 2));
//	}
	
	//수정 테스트
//	@Test
//	public void testUpdate() {
//		
//		InquireVO inquire = service.get((long) 50);
//		
//		if (inquire == null) {
//			return;
//		}
//		
//		inquire.setTitle("Test2");
//		inquire.setContent("Test_content2");
//		log.info("MODIFY RESULT: " + service.modify(review));
//	}
	
	//답변 수정/등록 테스트
	@Test
	public void testUpdate() {
		
		InquireVO inquire = service.get((long) 52);
		
		if (inquire == null) {
			return;
		}
		
		inquire.setAnswer_check("o");
		inquire.setAnswer("답변이 등록 되었습니다.789");
		log.info("MODIFY RESULT: " + service.modify2(inquire));
	}
}
