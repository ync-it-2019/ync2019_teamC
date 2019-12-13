package com.ync.project.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MypageVO;
import com.ync.project.front.mapper.MypageMapper;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: InquireMapperTests.java
  * @Date		: 2019. 12. 11. 
  * @Author		: 이준희
  * @프로그램 설명 :  회원이 구매한 목록리스트 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class MypageMapperTests {

	@Autowired
	private MypageMapper mapper;
	
	//목록
//	@Test
//	public void testGetList() {
//		List<MypageVO> mypage = mapper.getReservation("user2");
//		log.info(mypage);
//		
//		mypage.forEach(MypageVO -> log.info(MypageVO));
//	}

	//등록
//	@Test
//	public void testInsert() {
//
//		InquireVO inquire = new InquireVO();
//		inquire.setProduct_num(1);
//		inquire.setTitle("Test3");
//		inquire.setContent("TestContent3");
//		inquire.setUserid("kwr123");
//		inquire.setAnswer_check("o");
//		inquire.setAnswer("TestAnswer3");
//
//		mapper.insert(inquire);
//
//		log.info(inquire);
//	}

	//등록2
//	@Test
//	public void testInsertSelectKey() {
//
//		InquireVO inquire = new InquireVO();
//		inquire.setProduct_num(1);
//		inquire.setTitle("Test2 select key");
//		inquire.setContent("Test2 select key");
//		inquire.setUserid("kwr123");
//		inquire.setAnswer_check("x");
//		inquire.setAnswer("");
//		
//		mapper.insertSelectKey(inquire);
//
//		log.info(inquire);
//	}

	//조회
//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		InquireVO inquire = mapper.get((long) 43);
//
//		log.info(inquire);
//
//	}

	//삭제
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete((long) 3));
//	}

	//수정
//	@Test
//	public void testUpdate() {
//
//		InquireVO inquire = new InquireVO();
//		inquire.setQ_idx((long) 2);
//		inquire.setTitle("Test2");
//		inquire.setContent("TestContnent2");
//		inquire.setAnswer_check("o");
//		inquire.setAnswer("TestAnswer2");
//
//		int count = mapper.update(inquire);
//		log.info("UPDATE COUNT: " + count);
//
//	}
	
	//답변 수정/등록
//	@Test
//	public void testUpdate() {
//
//		InquireVO inquire = new InquireVO();
//		inquire.setQ_idx((long) 52);
//		inquire.setAnswer_check("o");
//		inquire.setAnswer("답변이 등록 되었습니다.");
//
//		int count = mapper.update2(inquire);
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


		List<MypageVO> list = mapper.getListWithPaging("user2", cri);

		list.forEach(mypage -> log.info(mypage));

	}
	
	//페이징2
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
//		List<InquireVO> list = mapper.getListWithPaging2(cri, 1);
//
//		list.forEach(inquire -> log.info(inquire));
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
