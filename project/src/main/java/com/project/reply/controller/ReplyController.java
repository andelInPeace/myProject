package com.project.reply.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.board.vo.Criteria;
import com.project.reply.service.ReplyService;
import com.project.reply.vo.ReplyVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController // 페이지 이동 X
@RequiredArgsConstructor
@RequestMapping("/replies/*")
@Log4j
public class ReplyController {

	private final ReplyService replyService;
	
	// 댓글 등록 
	// consumes : 외부에서 전달받은 파라미터 타입 	
	// @RequestBody : 제이슨으로 받은 타입을 ReplyVO 객체로 맵핑 해줌 
	// produces : 결과 값 리턴할 때 타입. 자바에선 String = TEXT~~  문자열일 때 TEXt
	// responseEntity : 서버의 상태까지 전달(성공인지 아닌지) 
	@PostMapping(value="/new", consumes ="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO replyVO) {
		log.info("create.........." + replyVO);
		return replyService.register(replyVO)? new ResponseEntity<>("success", HttpStatus.OK):
		new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	
	// 해당 게시글 전체 댓글 조회 
	@GetMapping(value="/{bno}/{page}", produces= {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ReplyVO>> getList(@PathVariable("bno") Long bno, @PathVariable int page) {
		// header 에 담겨서 오면 requestBody || url 에 담겨서 오면 pathVariable 
		log.info("getList ..........: " + bno);
		return new ResponseEntity<>(replyService.findAllByBNO(new Criteria(page, 10),bno), HttpStatus.OK);
	}
	
	// 댓글 조회 
	@GetMapping(value="/{rno}", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ReplyVO getReply(@PathVariable("rno") Long rno){
		// 일반 문자열이나 데이터만 전달할 때는 ResponseEntity 꼭 안 써도 됨 
		log.info("getReply.......... : " + rno);
		return replyService.findByRNO(rno);
		
	}
	
	// 댓글 삭제 
	@DeleteMapping(value="/{rno}", produces={MediaType.TEXT_PLAIN_VALUE})
	public String remove(@PathVariable Long rno) {
		log.info("remove ........ : " + rno);
		return replyService.remove(rno)? "success" : " fail";
	}
	
	// 댓글 수정 
	// PUT : 자원의 전체 수정, 자원 내 모든 필드를 전달해야 함 
	// PATCH : 자원의 일부 수정, 수정할 필드만 전송 (나머지는 전달 안해도 되는 건 아니고 디폴트 값을 정해야함 
	// 실무에선 postmapping 을 많이 씀 
	@PutMapping(value="/{rno}", consumes="application/json", produces= {MediaType.APPLICATION_XML_VALUE})
	public String modify(@PathVariable Long rno, @RequestBody ReplyVO replyVO) {
		replyVO.setRno(rno);
		return replyService.modify(replyVO) ? "success" : "fail";
	}
}
