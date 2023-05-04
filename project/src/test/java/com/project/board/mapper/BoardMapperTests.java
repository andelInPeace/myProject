package com.project.board.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Test
	public void getListTest(Criteria criteria) {
		boardMapper.getList(criteria).forEach(log::info);
	}
	
//	@Test
//	public void insertTest() {
//		BoardVO board = new BoardVO();
//		board.setTitle("한번에");
//		board.setContent("될까");
//		board.setUser_id("paradise01");
//		board.setSecret("0");
//		
//		boardMapper.insert(board);
//		
//		log.info(board);
//	}
	
//	@Test
//	public void readTest() {
//		BoardVO board = boardMapper.read(3L);
//		log.info(board);
//	}
	
//	@Test
//	public void deleteTest() {
//		Long bno=4L;
//		if(boardMapper.read(bno)!=null) {
//			boardMapper.delete(bno);
//			log.info("DELETE COUNT : " + boardMapper.delete(bno));
//			// 건수가 나옴 
//		} 
//		log.info("NO BOARD");
//	}
	
//	@Test
//	public void updateTest() {
//		BoardVO board = boardMapper.read(3L);
//		if(board !=null) {
//			board.setTitle("오류없는세상");
//			board.setContent("꿈꾼다");
//			board.setUser_id("nabi01");
//			board.setSecret("0");
//			log.info("UPDATE COUNT : " + boardMapper.update(board));
//			return;
//		}
//		log.info("NO BOARD");
//	}
}
