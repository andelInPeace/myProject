package com.project.board.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.project.board.vo.BoardVO;

@Mapper
public interface BoardMapper {
	// 전체 리스트 조회 
	public List<BoardVO> getList();
	// 게시글 추가 
	public void insert(BoardVO board);
	// 게시글(하나) 조회 ( 게시글 하나의 정보를 가져올 거기 때문에 모델 객체(BoardVO)를 담아야 함 )
	public BoardVO read(Long bno);
	// 게시글 삭제 
	public int delete(Long bno);
	// 게시글 수정 (수정 완료된 boardVO 객체를 받는다)
	public int update(BoardVO board);
}
