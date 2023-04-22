package com.project.member.controller;

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


import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class MemberControllerTests {
	
	@Autowired
	private WebApplicationContext webApplicationContext;
	
	private MockMvc mockMvc;
	// get, mappaing, 그리고 그에 따른 return 을 설정... 
	
	@Before
	public void setUP() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	}

//	@Test
//	public void registerTest() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/")
//				.param("name", "김아루")
//				.param("id", "nabi03")
//				.param("pw", "nabi0303")
//				.param("phone", "010-5959-9595")
//				.param("email", "nabi03@gmail.com")
//				.param("admin", "0")
//				).andReturn().getFlashMap());
//	}
	
//	@Test
//	public void findMemberTest() throws Exception{
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/findMember")
//				.param("user_no", "5")
//				).andReturn().getModelAndView().getViewName());
//		// viewName : 연산이 끝나고 이동하게 될 페이지 ( member/findMember )
//		// getViewName 대신 getModelMap() 쓰면  해당 회원 정보가 담겨서 넘어감 
//	}
	
	@Test
	public void removeTest() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/remove")
//				.param("name", "김아루")
				.param("id", "a01")
//				.param("pw", "nabi0303")
//				.param("phone", "010-5959-9595")
//				.param("email", "nabi03@gmail.com")
//				.param("admin", "0")
				).andReturn().getFlashMap());
	}
	
//	@Test
//	public void updateTest() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/member/update")
//				.param("user_no", "4")
//				.param("name", "아우나")
//				.param("id","platina01")
//				.param("pw", "platina0101")
//				.param("phone", "010-9876-5432")
//				.param("email", "platina00@gmail.com")
//				).andReturn().getFlashMap());
//	}
	
//	@Test
//	public void goUpdateTst() throws Exception {
//		mockMvc.perform(MockMvcRequestBuilders.get("/member/update")
//				.param("user_no", "1"));
//	}
	
	@Test
	public void loginTest() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/member/login")
				.param("id", "paradise01")
				.param("pw", "paradise0101")
				).andReturn().getModelAndView().getModelMap());
	}

}
