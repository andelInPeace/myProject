package com.project.board.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.board.mapper.BoardMapper;
import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	BoardMapper boardMapper;

	@Override
	public void register(BoardVO board) {
		boardMapper.insert(board);

	}

	@Override
	public BoardVO get(Long bno) {
		return boardMapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		return boardMapper.update(board)!=0;
		// 0 이 아니라면 즉 1이라면(1건이 있다면) true 
	}

	@Override
	public boolean remove(Long bno) {
		return boardMapper.delete(bno)!=0;
		// 0 이 아니라면 즉 1이라면(1건이 있다면) true 
	}

	@Override
	public List<BoardVO> getList(Criteria criteria) {
		return boardMapper.getList(criteria);
	}
	
	@Override
	public int getTotal() {
		return boardMapper.getTotal();
	}

}
