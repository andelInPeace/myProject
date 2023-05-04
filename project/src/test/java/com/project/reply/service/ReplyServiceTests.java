package com.project.reply.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.project.board.vo.Criteria;
import com.project.reply.vo.ReplyVO;

import java.util.stream.IntStream;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyServiceTests {
	
	@Autowired
	private ReplyService replyService;
	
	private Long[] arBno = {146L, 144L, 143L, 138L};
	
	@Test
	public void daoTest() {
		log.info("==================================");
		log.info(replyService);
		log.info("==================================");
	}
	
//	@Test
//	public void registerTest() {
//		// 5개의 게시글에 2개씩 댓글 달기 
//		IntStream.rangeClosed(17,24).forEach(i -> {
//			ReplyVO reply = new ReplyVO();
//			reply.setBno(arBno[i%4]);
//			reply.setReply("댓글 테스트 " + i);
//			reply.setUser_id("작성자 " + i);
//			
//			replyService.register(reply);
//		});
//	}
	
//	@Test
//	public void findByRNOTest() {
//		log.info("들어옴");
//		log.info(replyService.findByRNO(23L));
//	}
	
//	@Test
//	public void removeTest() {
//		log.info(replyService.remove(24L));
//	}
	
//	@Test
//	public void removeAllTest() {
//		log.info(replyService.removeAllByBNO(144L));
//	}
	
//	@Test
//	public void modifyTest() {
//		ReplyVO replyVO = replyService.findByRNO(2L);
//		replyVO.setReply("서비스 단일 테스트");
//		log.info("==================================");
//		log.info(replyService.modify(replyVO));
//		log.info("==================================");
//		
//	}
	
	@Test
	public void findAllByBnoTest() {
		replyService.findAllByBNO(new Criteria(2,10), 146L).forEach(log::info);;
	}

}
