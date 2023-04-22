package com.project.board.service;

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
public class BoardServicetests {
	
	@Autowired
	private BoardService boardService;
	
	@Test
	public void serviceTest() {
		log.info(boardService);
	}
	
//	@Test
//	public void registerTest() {
//		BoardVO boardVO = new BoardVO();
//		boardVO.setTitle("서비스입플");
//		boardVO.setContent("테스트중.");
//		boardVO.setUser_id("nabi02");
//		boardVO.setSecret("0");
//		
//		boardService.register(boardVO);
//		log.info("register : " + boardVO.getBno());
//	}
	
//	@Test
//	public void getTest() {
//		BoardVO boardVO = boardService.get(4L);
//		if(boardVO != null) {
//			log.info(boardVO);
//			return;
//		}
//		log.info("NO BOARD");
//		
//	}
	
//	@Test
//	public void modifyTest() {
//		BoardVO board = boardService.get(4L);
//		if(board == null) {log.info("NO BOARD"); return;}
//		
//		board.setTitle("후아후아");
//		board.setContent("테스트수정.");
//		
//		if(boardService.modify(board)) {
//			log.info("=======================");
//			log.info("UPDATE SUCCESS");
//			log.info("=======================");
//			return;
//		}
//		log.info("UPDATE FAILURE");
//		log.info("=======================");
//	}
	
//	@Test
//	public void removeTest() {
//		BoardVO board = boardService.get(4L);
//		if(board == null) { log.info("NO BOARD"); return;}
//		
//		if(boardService.remove(board.getBno())){
//			log.info("UPDATE SUCCESS");
//			log.info("=======================");
//			return;
//		}
//		log.info("UPDATE FAILURE");
//		log.info("=======================");
//	}
	
	@Test
	public void getListTest() {
		boardService.getList(new Criteria()).forEach(log::info);
	}
}
