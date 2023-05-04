package com.project.reply.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.project.board.vo.Criteria;
import com.project.reply.vo.ReplyVO;

import lombok.extern.log4j.Log4j;

import java.util.stream.IntStream;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyDAOTests {
	
	private Long[] arBno = {146L, 144L, 143L, 138L};
	
	@Autowired
	public ReplyDAO replyDAO; 
	
	@Test
	public void daoTest() {
		log.info("==================================");
		log.info(replyDAO);
		log.info("==================================");
	}
	
//	@Test
//	public void registerTest() {
//		// 5개의 게시글에 2개씩 댓글 달기 
//		IntStream.rangeClosed(9,16).forEach(i -> {
//			ReplyVO reply = new ReplyVO();
//			reply.setBno(arBno[i%4]);
//			reply.setReply("댓글 테스트 " + i);
//			reply.setUser_id("작성자 " + i);
//			
//			replyDAO.register(reply);
//		});
//	}
	
//	@Test
//	public void findByRNOTest() {
//		log.info("들어옴");
//		log.info(replyDAO.findByRNO(3L));
//	}
	
//	@Test
//	public void removeTest() {
//		log.info(replyDAO.remove(3L));
//	}
	
//	@Test
//	public void removeAllTest() {
//		log.info(replyDAO.removeAll(144L));
//	}
	
//	@Test
//	public void modifyTest() {
//		ReplyVO replyVO = replyDAO.findByRNO(14L);
//		replyVO.setReply("수정된 댓글 테스트2");
//		log.info("==================================");
//		log.info(replyDAO.modity(replyVO));
//		log.info("==================================");
//		
//	}
	
	@Test
	public void findAllByBnoTest() {
		replyDAO.findAllByBNO(new Criteria(), 146L).forEach(log::info);
	}
}
