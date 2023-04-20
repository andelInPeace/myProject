package com.project.board.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.board.vo.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class boardDAOTests {
	
	@Autowired
	BoardDAO boardDAO;
	
	@Test
	public void daoTest() {
		log.info(boardDAO);
	}
	
//	@Test
//	public void registerTest() {
//		BoardVO board = new BoardVO();
//		board.setTitle("한번에될까");
//		board.setContent("으하하하");
//		board.setUser_id("paradise01");
//		board.setSecret("0");
//		
//		boardDAO.register(board);
//			
//		}
	
//	@Test
//	public void getTest() {
//		log.info(boardDAO.get(3L));
//	}

//	@Test
//	public void modifyTest() {
//		BoardVO board = boardDAO.get(4L);
//		if(board== null) {log.info("====== NO BOARD ====="); return;}
//		
//		board.setTitle("수정연습");
//		
//		log.info("UPDATE : " + boardDAO.modify(board));
//	}
	
//	@Test
//	public void removeTest() {
//		BoardVO board = boardDAO.get(4L);
//		if(board== null) {log.info("====== NO BOARD ====="); return;}
//		
//		log.info("=====DELETE====== : " + boardDAO.remove(board.getBno()));
//	}
	
	@Test
	public void getList() {
		boardDAO.getList().forEach(log::info);
	}
}
