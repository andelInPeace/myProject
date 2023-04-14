package com.example.project.domain.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.project.domain.vo.MemberDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberDAOTests {
	
	@Autowired
	MemberDAO memberDAO;
	
//	@Test
//	public void daoTest() {
//		log.info(memberDAO);
//	}
	
//	@Test
//	public void registerTest() {
//		MemberDTO member = new MemberDTO();
//		member.setName("아우나");
//		member.setId("platina02");
//		member.setPw("platina0202");
//		member.setPhone("010-5959-2828");
//		member.setEmail("platina02@gmail.com");
//		member.setAdmin("0");
//		memberDAO.register(member);
//	}
	
//	@Test
//	public void findMemberTest() {
//		log.info(memberDAO.findMemberOne(4L));
//	}
//	
//	@Test
//	public void updateTest() {
//		MemberDTO member = memberDAO.findMemberOne(4L);
//		if(member==null) {log.info("NO MEMBER"); return;}
//		
//		member.setEmail("platina02-1@gmail.com");
//		
//		log.info("===========================");
//		log.info("UPDATE : " + memberDAO.updateMember(member));
//		// memberDAO.updateMember 는 boolean 타입 
//		log.info("===========================");
//	}
	
//	@Test
//	public void removeTest() {
//		MemberDTO member = memberDAO.findMemberOne(3L);
//		if(member==null) {log.info("NO MEMBER"); return;}
//		
//		log.info("===========================");
//		log.info("DELTE : " + memberDAO.removeMember(member.getUser_no()));
//		// memberDAO.updateMember 는 boolean 타입 
//		log.info("===========================");
//	}
	
	@Test
	public void findAllTest() {
		memberDAO.findMemberAll();
	}
	
}
