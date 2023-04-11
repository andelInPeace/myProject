package com.example.project.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.project.domain.vo.MemberDTO;
import com.example.project.mapper.MemberMapperTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper memberMapper;
	
//	@Test
//	public void insertMember() {
//		memberMapper.selectMemberAll().forEach(log::info);
//	}
	
//	@Test
//	public void insertMember() {
//		MemberDTO memberDTO = new MemberDTO();
//		memberDTO.setName("아우나");
//		memberDTO.setId("platina01");
//		memberDTO.setPw("platina0202");
//		memberDTO.setPhone("010-9876-2345");
//		memberDTO.setEmail("platina01@gmail.com");
//		memberDTO.setAdmin("0");
//		
//		memberMapper.insertMember(memberDTO);		
//		log.info(memberDTO);
//	}
	
	@Test
	public void selectMemberOne() {
		MemberDTO memberDTO = memberMapper.selectMemberOne(6L);
		log.info(memberDTO);
	}

}
