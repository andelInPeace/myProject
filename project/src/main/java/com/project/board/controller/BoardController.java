package com.project.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.board.service.BoardService;
import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;
import com.project.board.vo.pageDTO;
import com.project.member.vo.MemberDTO;

import lombok.extern.log4j.Log4j;


//Task           URL           	  Method 			       Parameter     	 Form(이 task로 가기위해서 미리 준비할 페이지가 필요한가)		  URL 이동 
//전체목록 		/board/list			GET											x (바로 전체 화면 나오면 됨)							
//등록처리			/board/register		Post					모든 항목(객체) 	 입력화면 필요 												이동 
//조회			/board/read			GET (글번호만 필요)			bno				 목록이 필요하긴 한데, 이건 디폴트 화면이라 따로 필요 X		
//삭제처리 		/board/remove		GET (글번호만 필요)			bno				 입력화면 필요  											이동 
//수정처리			/board/modify 		POST(글 내용도 수정 가능)	모든 항목 			 입력화면 필요  											이동 
// 처리 : 페이지에서 '완료' 눌렀을 때 

@Controller
@Log4j
@RequestMapping("/board/*")
// board 로 시작하는 애들은 다 여기로 
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// 전체 게시글 조회 
	@GetMapping("/list")
	public String list(Criteria criteria, Model model) {
		log.info("list..............");
		model.addAttribute("boardList", boardService.getList(criteria)); 
		model.addAttribute("pageDTO", new pageDTO(boardService.getTotal(), criteria));
		return "/board/list";
	}
	
	// 게시글 입력 
	@PostMapping("/register")
	public String register(MemberDTO memberDTO, BoardVO boardVO, RedirectAttributes rttr) {
		log.info("/register : " + boardVO);
		boardService.register(boardVO);
		
		
		// flash 라는 영역은 Session 에 생기고, redirect 로 전송할 때 request 영역에 초기화 된다 
		// 초기화 되기 전에 FLash 영역에 데이터를 저장해놓고, 초기화된 후 flash 영역에서 데이터를 가지고 온다 
		// 데이터를 가져왔다면 FLASH  영역에 있던 데이터는 없어진다. 
		rttr.addFlashAttribute("bno", boardVO.getBno());
		return "redirect:/board/list";
	}
	
	// 게시글 조회  // 게시글 '수정하기' 버튼 눌렀을 때 
	@GetMapping({"/read","/modify"})
	public void read(Long bno, HttpServletRequest request, HttpSession session, Model model) {
		// 요청 들어온 Url 추출 
		String url = request.getRequestURI();
		String realUrl = url.substring(url.lastIndexOf("/")); 
		// url 중 / 뒷 부분 출력 
		log.info(url.substring(url.lastIndexOf("/")) + " : " + bno);
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("user");
		
		if(memberDTO != null) {
			model.addAttribute("userId", memberDTO.getId());
			model.addAttribute("board", boardService.get(bno));
			return;
		}
			model.addAttribute("board", boardService.get(bno));
	}
	
	// 게시글 삭제 
	@GetMapping("remove")
	public String remove(long bno, RedirectAttributes rttr) {
		log.info("/remove : " + bno);
		
		if(boardService.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list";
	}
	
	// 게시글 수정 
	@PostMapping("/modify")
	public String modify(BoardVO boardVO, RedirectAttributes rttr) {
		// 수정된 BoardVO 받음 
		
		log.info("/modify : " + boardVO);
		
		if(boardService.modify(boardVO)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}
	
	// 메인 화면에서 게시글 등록을 눌렀을 때 
	@GetMapping("/register")
	public String register(HttpSession session, Model model) {
		MemberDTO viewMember = (MemberDTO)session.getAttribute("user");
		model.addAttribute("user_id", viewMember.getId());
		return "/board/register";
	}
	
}
