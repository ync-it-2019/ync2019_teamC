package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import com.ync.project.domain.Criteria;

import com.ync.project.admin.service.MemberService;
import com.ync.project.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class MemberServiceTests {
	@Setter(onMethod_ = {@Autowired})
	private MemberService service;
	//테스트환경 테스트
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	//등록작업 테스트
//	@Test
//	public void testRegister() {
//		MemberVO member = new MemberVO();
//		member.setUserid("abc123");
//		member.setName("강병국");
//		member.setUserpw("4879");
//		member.setPhone("010-7391-2698");
//		member.setEmail("abv@naver.com");
//		member.setSex("남자");
//		
//		service.register(member);
//		
//		log.info("생성된 아이디 : " + member.getUserid());
//	}
	//목록작업 테스트
	@Test
	public void testGetList() {
		//service.getList().forEach(member -> log.info(member));
		service.getListWithPaging(new com.ync.project.domain.Criteria(1, 10)).forEach(member -> log.info(member));
	}
	//조회작업 테스트
//	@Test
//	public void testGet() {
//		log.info(service.get("kwr123"));
//	}
}
