package com.project.reply.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.board.vo.Criteria;
import com.project.reply.vo.ReplyVO;



@Service
public interface ReplyService {
		// 댓글 추가 (추가된 건수 리턴: 성공 시 1, 실패 시 0)  
		public boolean register(ReplyVO replyVO);
		// 댓글 가져오기 : 댓글 하나의 전체정보를 가져올거라 return type 은 ReplyVO 
		public ReplyVO findByRNO(Long rno);
		// 댓글 삭제 (건수로 리턴) 
		public boolean remove(Long rno);
		// 하나의 게시글 삭제 시, 그 게시글의 모든 댓글 삭제 
		public boolean removeAllByBNO(Long bno);
		// 댓글 수정 (건수로 리턴)
		// 입력 받을 땐 수정이 완료된 replyVO 를 받음 
		public boolean modify(ReplyVO replyVO);
		// 댓글 목록 : 몇 개의 데이터가 존재할 수 없기 때문에 칸을 직접 배열하는 array 보다는 list 더 맞다 
		// bno 를 전달받아서 그 BNO 에 있는 댓글들만 가져오면 됨 
		public List<ReplyVO> findAllByBNO(Criteria criteria, Long bno);
		// 해당 게시글 전체 댓글 갯수 
		public int getTotal(Long bno);
}
