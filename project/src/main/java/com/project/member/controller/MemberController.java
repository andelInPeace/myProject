package com.project.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.member.service.MemberService;
import com.project.member.vo.MemberDTO;

import lombok.extern.log4j.Log4j;


//  Task    	URL    			 	Method		Parameter		Form    	 			URL 이동 
//  등록 처리    	/member/register  	post		모든 항목(객체) 	작성화면 필요 	 			등록 완료 후 리스트(원래) 페이지로 이동 
//  조회	   		/member/findMember 	Get			user_no			필요할 것 같은데 			
//  수정 처리 		/member/update		post		모든 항목(객체) 	입력화면 필요 (상세보기) 		이동 
//  삭제 처리 		/member/remove		get			user_no			입력화면 필요 				이동 
// 처리 : 페이지 이동이 아니라 그 화면에서 완료 눌렀을 때 

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/list")
	public void list() {
		log.info("들어오고있니 .... ");
	}
	
	
	//가입 완료 버튼 누르면 이동 
	@ResponseBody
	@PostMapping(value="/register")
	public String register(@RequestBody MemberDTO memberDTO) {
		
		MemberDTO member = memberService.loginMember(memberDTO);
		if(member != null) {
			return "idDuple";
		}
		
		log.info("/register : " + memberDTO);
		memberService.register(memberDTO);
		return "success";
		
		//rttr.addFlashAttribute("result", "success");
		
//		return "redirect:/member/register";
	}
	
	// 회원 정보 불러오기 
//	@GetMapping("/view")
//	public void view(Long user_no, Model model) {
//		log.info("정보 보기");
//		model.addAttribute("member", memberService.viewMemberOne(user_no));
//	}
	
	
	// 회원 정보 조회 (수정 위한 조회도)
	@GetMapping({"/findMember", "/update"})
	public void findMember(Long user_no, HttpServletRequest request, Model model) {
		//사용자가 요청한 Url(/findmember? /updqte?)이 뭔지를 알아야 하는데 
		// 이 url 정보는 Request 에 담겨 있음 (상수가 아닌 변수로 담을 것)
		String url = request.getRequestURI();
		// url 에서 마지막 부분 /FINDMEMBER 냐 /update 냐 를 알아야 함 
		log.info("=============================");
		log.info(url.substring(url.lastIndexOf("/")) + " : " + user_no);
		log.info("=============================");
		
		model.addAttribute("member", memberService.viewMemberOne(user_no));
		
	}
	
	
	// 회원 정보 삭제 
	@GetMapping("/remove")
	public String remove(Long user_no, RedirectAttributes rttr) {
		log.info("=============================");
		log.info("/removeMember : " + user_no);
		log.info("=============================");
		
		
		if(memberService.removeMember(user_no)) {
			rttr.addFlashAttribute("result", "success");
		}	
		return "redirect:/";
	}
	
	//회원 정보 수정 완료 버튼 누르면 이동 
	@PostMapping("/update")
	public String update(MemberDTO memberDTO, RedirectAttributes rttr) {
		// 수정이 된 memberDTO 받음 
		log.info("=============================");
		log.info("/updateMember : " + memberDTO);
		log.info("=============================");
		if(memberService.updateMember(memberDTO)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/";
	}
	
	// 회원 가입 페이지로 이동 
	@GetMapping("/register")
	public String register1() {
		log.info("해보자");
		
		return "/member/register";
	}
	
//	@GetMapping("/register01")
//	public String register01(){
//		log.info("Test");
//		
//		return "/member/register01";
//	}
	
	// 로그인 
	@GetMapping("/login")
	public String login() {
		log.info("login ..........");
		
		return "/member/login";
	}
	
	// 로그인 클릭시 
	@PostMapping("/login")
	public String login(MemberDTO memberDTO, RedirectAttributes rttr) {
		log.info("=============================");
		log.info("/member ID : " + memberDTO.getId());
		log.info("/member PW : " + memberDTO.getPw());
		log.info("=============================");
		
		
		if(memberService.loginMember(memberDTO) !=null) {
			log.info(memberService.loginMember(memberDTO));
			rttr.addFlashAttribute("result", "success");
			return "redirect:/";
			
		} else {
			log.info("NO MEMBER..........");
		}
		return "/member/login";
		
	}
}

