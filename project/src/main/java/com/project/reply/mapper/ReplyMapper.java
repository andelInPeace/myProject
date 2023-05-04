package com.project.reply.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.board.vo.Criteria;
import com.project.reply.vo.ReplyVO;

@Mapper
public interface ReplyMapper { 
	
	// 댓글 추가 (추가된 건수 리턴: 성공 시 1, 실패 시 0)  
	// 추가시 replyVO 객체 정보를 다 받아와야 함 
	public int insert(ReplyVO replyVO);
	// 댓글 가져오기 : 댓글 하나의 전체정보를 가져올거라 return type 은 ReplyVO 
	public ReplyVO select(Long rno);
	// 댓글 삭제 (건수로 리턴) 
	public int delete(Long rno);
	// 하나의 게시글 삭제 시, 그 게시글의 모든 댓글 삭제 
	public int deleteAll(Long bno);
	// 댓글 수정 (건수로 리턴)
	// 입력 받을 땐 수정이 완료된 replyVO 를 받음 
	public int update(ReplyVO replyVO);
	// 댓글 목록 : 몇 개의 데이터가 존재할 수 없기 때문에 칸을 직접 배열하는 array 보다는 list 더 맞다 
	// bno 를 전달받아서 그 BNO 에 있는 댓글들만 가져오면 됨 
	public List<ReplyVO> selectAll(@Param("cri")Criteria criteria, @Param("bno")Long bno);
}
