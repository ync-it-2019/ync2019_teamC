package com.ync.project.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: MemberControllerTests.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)

// Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
// Java Config
// @ContextConfiguration(classes = {
// org.zerock.config.RootConfig.class,
// org.zerock.config.ServletConfig.class} )
@Log4j
public class MemberControllerTests {

	// @Setter(onMethod_ = { @Autowired })
	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음

	private MockMvc mockMvc; // 필드 선언

	// @Befores는모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	//목록 테스트
//	@Test
//	public void testList() throws Exception {
//
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/admin/management"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

	@Test
	public void testRegister() throws Exception {

		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/login/register")
				.param("userid", "wl6321")
				.param("name", "곽우렬")
				.param("userpw", "1111")
				.param("phone", "010-1111-1111")
				.param("email", "wl6321@gmail.com")
				.param("sex", "남자"))
				.andReturn().getModelAndView().getViewName();

		log.info("resultPage");

	}

//	@Test
//	public void tetGet() throws Exception {
//
//		log.info(mockMvc.perform(MockMvcRequestBuilders
//				.get("/board/get")
//				.param("bno", "2"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

//	@Test
//	public void testModify() throws Exception {
//
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders
//						.post("/board/modify").param("bno", "1")
//						.param("title", "수정된 테스트 새글 제목")
//						.param("content", "수정된 테스트 새글 내용")
//						.param("writer", "user00"))
//				.andReturn().getModelAndView().getViewName();
//
//		log.info(resultPage);
//
//	}

//	@Test
//	public void testRemove() throws Exception {
//		// 삭제전 데이터베이스에 게시물 번호 확인할 것
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove").param("bno", "25")).andReturn()
//				.getModelAndView().getViewName();
//
//		log.info(resultPage);
//	}

//	@Test
//	public void testListPaging() throws Exception {
//
//		log.info(mockMvc.perform(
//				MockMvcRequestBuilders.get("/admin/management")
//				.param("pageNum", "1")
//				.param("amount", "10"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

}
