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
/**
  * @FileName	: MemberServiceTests.java
  * @Date		: 2019. 10. 31. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원 service 테스트
  */
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
//		member.setUserid("mvc789");
//		member.setName("이시국");
//		member.setUserpw("1234");
//		member.setPhone("010-2341-2785");
//		member.setEmail("Lee@gamil.com");
//		member.setSex("남자");
//		
//		service.register(member);
//		
//		log.info("생성된 아이디 : " + member.getUserid());
//	}
	
	//등록작업 테스트2
	@Test
	public void testRegister2() {
		MemberVO member = new MemberVO();
		member.setUserid("admin5");
		member.setName("관리자5");
		member.setUserpw("pw5");
		member.setPhone("010-2341-2785");
		member.setEmail("Lee@gamil.com");
		member.setSex("남자");
		member.setAuth("ROLE_ADMIN");
		
		service.register2(member);
		
		log.info("생성된 아이디 : " + member.getUserid());
	}
	
	//목록작업 테스트
//	@Test
//	public void testGetList() {
//		//service.getList().forEach(member -> log.info(member));
//		service.getListWithPaging(new com.ync.project.domain.Criteria(1, 10)).forEach(member -> log.info(member));
//	}
	//조회작업 테스트
	@Test
	public void testGet() {
		log.info(service.get("user2"));
	}
}
