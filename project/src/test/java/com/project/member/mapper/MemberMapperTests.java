package com.project.member.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.member.mapper.MemberMapper;
import com.project.member.mapper.MemberMapperTests;
import com.project.member.vo.MemberDTO;

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
	
//	@Test
//	public void selectMemberOne() {
//		MemberDTO memberDTO = memberMapper.selectMemberOne(2L);
//		log.info(memberDTO);
//	}
	
//	@Test
//	public void selectMembeAll() {
//		memberMapper.selectMemberAll().forEach(log::info);;
//	}
	
//	@Test
//	public void updateMember() {
//		
//		MemberDTO member = memberMapper.selectMemberOne(3L);
//
//		member.setPw("platina0101");
//		member.setPhone("010-1234-5959");
//		member.setEmail("platina02@gmail.com");
//		memberMapper.updateMember(member);
//		
//		log.info(member);
//	}
	
//	@Test
//	public void deleteMember() {
//		Long userNo = 3L;
//		memberMapper.delete(userNo);
//	}

}
