package com.project.reply.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.board.vo.Criteria;
import com.project.reply.mapper.ReplyMapper;
import com.project.reply.vo.ReplyVO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor // 생성자주입 
public class ReplyDAO {
	
	private final ReplyMapper replyMapper;
	
		// 댓글 추가 (추가된 건수 리턴: 성공 시 1 -> True , 실패 시 0 -> false)  
		public boolean register(ReplyVO replyVO) {
			return replyMapper.insert(replyVO) ==1;
		}
		
		// 댓글 가져오기 : 댓글 하나의 전체정보를 가져올거라 return type 은 ReplyVO 
		public ReplyVO findByRNO(Long rno) {
			return replyMapper.select(rno);
		}
		
		// 댓글 삭제 (건수로 리턴) 
		public boolean remove(Long rno) {
			return replyMapper.delete(rno)==1;
		}
		
		// 하나의 게시글 삭제 시, 그 게시글의 모든 댓글 삭제 
		// 몇 개가 삭제될지 모르기 때문에 ==1 로 두지 않고 !=0 으로 두기 
		public boolean removeAllByBNO(Long bno) {
			return replyMapper.deleteAll(bno) != 0;
		}
		
		// 댓글 수정 (건수로 리턴)
		public boolean modity(ReplyVO replyVO) {
			return replyMapper.update(replyVO) == 1;
		}
		
		// 댓글 목록 : 몇 개의 데이터가 존재할 수 없기 때문에 칸을 직접 배열하는 array 보다는 list 더 맞다 
		public List<ReplyVO> findAllByBNO(Criteria criteria, Long bno){
			return replyMapper.selectAll(criteria, bno);
		}
		
		public int getTotal(Long bno) {
			return replyMapper.getTotal(bno);
		}
	

}
