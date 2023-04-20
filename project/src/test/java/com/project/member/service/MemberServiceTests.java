package com.project.member.service;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.member.service.MemberService;
import com.project.member.vo.MemberDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberServiceTests {
	
	@Autowired
	private MemberService memberService;
	
//	@Test
//	public void serviceTest() {
//		log.info(memberService);
//	}
//	
//	@Test
//	public void registerTest() {
//		MemberDTO member = new MemberDTO();
//		member.setId("platina01");
//		member.setName("제닌");
//		member.setPw("platina0101");
//		member.setPhone("010-1212-8282");
//		member.setEmail("platina01@gmail.com");
//		member.setAdmin("0");
//		
//		memberService.register(member);
//		
//	}
	
//	@Test
//	public void selectTest() {
//		MemberDTO member = memberService.findMemberOne(5L);
//		if(member!=null) {
//			log.info(member);
//			return;
//		}  
//		log.info("NO MEMBER");
//	}
//	
//	@Test
//	public void modityTest() {
//		MemberDTO member = memberService.findMemberOne(4L);
//		if(member == null) {
//			log.info("=========================");
//			log.info("NO MEMBER");
//			log.info("=========================");
//			return;
//		}
//		member.setName("제닌");
//		member.setId("platina02");
//		member.setPw("platina0101");
//		member.setPhone("010-2222-5959");
//		member.setEmail("platina02@gmail.com");
//		
//		if(memberService.updateMember(member)) {
//			log.info("=========================");
//			log.info("UPDATE SUCCESS");
//			log.info(member);
//			log.info("=========================");
//			
//		} else {
//			log.info("=========================");
//			log.info("UPDATE FAILURE");
//			log.info("=========================");
//		}
//	}
//	
//	@Before
//	public void removeTest() {
//		MemberDTO member = memberService.viewMemberOne(5L);
//		if(member==null) {
//			log.info("NO MEMBER");
//			return;
//		}
//		if(memberService.removeMember(member.getUser_no())) {
//			log.info("=========================");
//			log.info("DELETE SUCCESS");
//			log.info("=========================");
//		} else {
//			log.info("=========================");
//			log.info("DELETE FAILURE");
//			log.info("=========================");
//		}
//	}
	
	@Test
	public void memberList() {
		memberService.findMemberAll().forEach(log::info);;
	}
}
