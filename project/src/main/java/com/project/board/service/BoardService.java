package com.project.board.service;

import java.util.List;
import org.springframework.stereotype.Service;

import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

@Service
public interface BoardService {
	// 전체 게시글 조회 
	public List<BoardVO> getList(Criteria criterias);
	// 게시글 등록 
	public void register(BoardVO board);
	// 게시글 조회
	public BoardVO get(Long bno);
	// 게시글 삭제 
	public boolean remove(Long bno);
	// 게시글 수정 
	public boolean modify(BoardVO board);
	//전체 게시글 수 
	public int getTotal(Criteria criteria);

}
