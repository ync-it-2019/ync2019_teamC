package com.ync.project.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.ync.project.admin.mapper.MemberMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.ReviewVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: MemberMapperTests.java
  * @Date		: 2019. 10. 29. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원 mapper테스트
  */
@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Test
	public void testRead() {

		MemberVO vo = mapper.read("user2");

		log.info(vo);
		
		vo.getAuthList().forEach(authVO -> log.info(authVO));

	}
	//리스트출력
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(member -> log.info(member));
//	}
	//insert-test
//	@Test
//	public void testInsert() {
//		MemberVO member = new MemberVO();
//		member.setUserid("qwe4569");
//		member.setName("김수이");
//		member.setUserpw("4569");
//		member.setPhone("010-8523-7136");
//		member.setEmail("qwe@gmail.com");
//		member.setSex("여자");
//		
//		mapper.insert(member);
//		
//		log.info(member);
//	}
	
	//삭제
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete("kang123"));
//	}

	//수정
//	@Test
//	public void testUpdate() {
//
//		MemberVO member = new MemberVO();
//		member.setUserid("admin1");
//		member.setPhone("010-6907-0416");
//		member.setEmail("gnl7854@naver.com");
//		member.setSex("남자");
//
//		int count = mapper.update(member);
//		log.info("UPDATE COUNT: " + count);
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
//		List<MemberVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(review -> log.info(review));
//
//	}

}
