package com.project.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

@Repository
public interface BoardDAO {
	public void register(BoardVO board);
	public BoardVO get(Long bno);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
	public List<BoardVO> getList(Criteria criteria);
	public int getTotal();

}
