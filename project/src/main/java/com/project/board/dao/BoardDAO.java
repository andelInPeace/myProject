package com.project.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.board.vo.BoardDTO;

@Repository
public interface BoardDAO {
	public void register(BoardDTO board);
	public BoardDTO get(Long bno);
	public boolean modify(BoardDTO board);
	public boolean remove(Long bno);
//	public List<BoardDTO> getList(Criteria criteria);
//	public int getTotal(Criteria criteria);

}
