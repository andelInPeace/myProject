package com.project.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.board.dao.BoardDAO; 
import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> getList(Criteria criteria) {
		return boardDAO.getList(criteria);
	}

	@Override
	public void register(BoardVO board) {
		boardDAO.register(board);

	}

	@Override
	public BoardVO get(Long bno) {
		return boardDAO.get(bno);
	}

	@Override
	public boolean remove(Long bno) {
		return boardDAO.remove(bno);
		// boardDAO.remove(bno) 자체가 true 
	}

	@Override
	public boolean modify(BoardVO board) {
		return boardDAO.modify(board);
		
	}
	
	@Override
	public int getTotal() {
		return boardDAO.getTotal();
	}

}
