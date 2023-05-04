package com.project.reply.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.board.vo.Criteria;
import com.project.reply.dao.ReplyDAO;
import com.project.reply.vo.ReplyVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor //생성자 초기화 
public class ReplyServiceImpl implements ReplyService {
	
	private final ReplyDAO replyDAO;

	@Override
	public boolean register(ReplyVO replyVO) {
		return replyDAO.register(replyVO);
	}

	@Override
	public ReplyVO findByRNO(Long rno) {
		return replyDAO.findByRNO(rno);
	}

	@Override
	public boolean remove(Long rno) {
		return replyDAO.remove(rno);
	}

	@Override
	public boolean removeAllByBNO(Long bno) {
		return replyDAO.removeAllByBNO(bno);
	}

	@Override
	public boolean modify(ReplyVO replyVO) { 
		return replyDAO.modity(replyVO);
	}

	@Override
	public List<ReplyVO> findAllByBNO(Criteria criteria, Long bno) {
		return replyDAO.findAllByBNO(criteria, bno);
	}

}
