package com.project.reply.mapper;

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
public class ReplyaMpperTests {
	
	private Long[] arBno = {146L, 144L, 143L, 138L};
	
	@Autowired
	ReplyMapper replyMapper;
	
	@Test
	public void mapperTest() {
		log.info("==================================");
		log.info(replyMapper);
		log.info("==================================");
	}
	
//	@Test
//	public void insertTest() {
//		// 5개의 게시글에 2개씩 댓글 달기 
//		IntStream.rangeClosed(1,8).forEach(i -> {
//			ReplyVO reply = new ReplyVO();
//			reply.setBno(arBno[i%4]);
//			reply.setReply("댓글 테스트 " + i);
//			reply.setUser_id("작성자 " + i);
//			
//			replyMapper.insert(reply);
//		});
//	}
	
//	@Test
//	public void selectTest() {
//		log.info("들어옴");
//		log.info(replyMapper.select(8L));
//	}
	
//	@Test
//	public void deleteTest() {
//		log.info(replyMapper.delete(8L));
//	}
	
//	@Test
//	public void deleteAllTest() {
//		log.info(replyMapper.deleteAll(144L));
//	}
	
//	@Test
//	public void updateTest() {
//		ReplyVO reply = replyMapper.select(9L);
//		
//		if(reply != null) {
//			reply.setReply("댓글 내용 수정 테스트");
//		}
//		
//		log.info("======================================================");
//		// 수정할 댓글이 없다면 
//		log.info(reply == null? "없는 댓글 입니다." : replyMapper.update(reply) + "건 수정되었습니다.");
//		log.info("======================================================");
//	}
	
	@Test
	public void selectAllTest() {
		replyMapper.selectAll(new Criteria(2,10), 146L).forEach(log::info);
	}

}
