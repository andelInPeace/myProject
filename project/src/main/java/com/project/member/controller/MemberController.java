package com.project.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	// 회원가입 버튼 누를 때 
	@ResponseBody
	@PostMapping(value="/register", consumes="application/json")
	public String register(@RequestBody MemberDTO memberDTO) {
		System.out.println("좀 되라 ...");
		log.info("좀되라 ... ");
		
		int member = memberService.checkIdDuple(memberDTO);
		if(member != 0) {
			System.out.println("중복된 아이디");
			return "idDuple";
		} 
			System.out.println("/register : " + memberDTO);
			memberService.register(memberDTO);
			return "success";
		
		//rttr.addFlashAttribute("result", "success");
		
		//return "redirect:/member/register";
	}

	
	// 회원 정보 불러오기 
//	@GetMapping("/view")
//	public void view(Long user_no, Model model) {
//		log.info("정보 보기");
//		model.addAttribute("member", memberService.viewMemberOne(user_no));
//	}
	
	// 로그인 클릭시 
	@ResponseBody
	@PostMapping("/login")
	public String login(@RequestBody MemberDTO memberDTO, HttpSession session) {
		System.out.println("=============================");
		System.out.println("/member ID : " + memberDTO.getId());
		System.out.println("/member PW : " + memberDTO.getPw());
		System.out.println("=============================");
		
		MemberDTO loginMember = memberService.loginMember(memberDTO);
		
//		if(loginMember == null){
//			throw new Exception("아이디와 비밀번호가 일치하지 않습니다.");
//		};
		
		if(loginMember !=null) {
			System.out.println(loginMember);
			//인증 성공, 로그인 처리
			// 로그인시 member 객체 전달 
			session.setAttribute("user", loginMember);
			return "loginOK";
			
		} else {
			System.out.println("NO MEMBER..........");
			return "loginFail";
		}
		
	}
	
	// 회원 정보 조회
	@GetMapping({"/viewmember"})
	public String findMember(MemberDTO memberDTO, HttpServletRequest request, Model model, HttpSession session) {
		
		// 회원 번호가 필요함
		//회원 번호를 구하기 위해 session에 저장된 회원 정보 반환
		MemberDTO viewMember = (MemberDTO)session.getAttribute("user");
	
		//사용자가 요청한 Url(/findmember? /updqte?)이 뭔지를 알아야 하는데 
		// 이 url 정보는 Request 에 담겨 있음 (상수가 아닌 변수로 담을 것)
		String url = request.getRequestURI();
		// url 에서 마지막 부분 /FINDMEMBER 냐 /update 냐 를 알아야 함 
		System.out.println("=============================");
		System.out.println(url.substring(url.lastIndexOf("/")) + " : " + viewMember.getId());
		System.out.println("=============================");
		
		model.addAttribute("member", memberService.viewMemberOne(viewMember));
		
		return "/member/viewmember";
		
	}
	
	// 회원 정보 수정페이지로 이동 
	@GetMapping({"/update"})
	public String updatedMember(MemberDTO memberDTO, HttpServletRequest request, Model model, HttpSession session) {
		
		// 회원 번호가 필요함
		//회원 번호를 구하기 위해 session에 저장된 회원 정보 반환
		MemberDTO viewMember = (MemberDTO)session.getAttribute("user");
	
		//사용자가 요청한 Url(/findmember? /updqte?)이 뭔지를 알아야 하는데 
		// 이 url 정보는 Request 에 담겨 있음 (상수가 아닌 변수로 담을 것)
		String url = request.getRequestURI();
		// url 에서 마지막 부분 /FINDMEMBER 냐 /update 냐 를 알아야 함 
		System.out.println("=============================");
		System.out.println(url.substring(url.lastIndexOf("/")) + " : " + viewMember.getId());
		System.out.println("=============================");
		
		model.addAttribute("member", memberService.viewMemberOne(viewMember));
		
		return "/member/update";
		
	}
	
	//회원 정보 수정 버튼 누르면 이동 
	@Transactional(rollbackFor = Exception.class) 
	@PostMapping("/update")
	public String update(MemberDTO memberDTO, HttpSession session, RedirectAttributes rttr) {
				
		// 수정이 된 memberDTO 받음 
		System.out.println("=============================");
		System.out.println("/updateMember : " + memberDTO);
		System.out.println("=============================");
		if(memberService.updateMember(memberDTO)) {
			
			MemberDTO updateMember = memberService.viewMemberOne(memberDTO);
			rttr.addFlashAttribute("result", "success");
			session.setAttribute("user", updateMember);
			System.out.println(updateMember);	
		} 
		return "redirect:/member/viewmember";
	}
		
	
	// 회원 정보 
//	@GetMapping({"/viewmember", "/update"})
//	public void findMember(MemberDTO memberDTO, HttpServletRequest request, Model model, HttpSession session) {
//		
//		// 회원 번호가 필요함
//		//회원 번호를 구하기 위해 session에 저장된 회원 정보 반환
//		MemberDTO viewMember = (MemberDTO)session.getAttribute("user");
//	
//		//사용자가 요청한 Url(/findmember? /updqte?)이 뭔지를 알아야 하는데 
//		// 이 url 정보는 Request 에 담겨 있음 (상수가 아닌 변수로 담을 것)
//		String url = request.getRequestURI();
//		// url 에서 마지막 부분 /FINDMEMBER 냐 /update 냐 를 알아야 함 
//		System.out.println("=============================");
//		System.out.println(url.substring(url.lastIndexOf("/")) + " : " + viewMember.getId());
//		System.out.println("=============================");
//		
//		model.addAttribute("member", memberService.viewMemberOne(viewMember));
//		
//	}
//	
	// 회원 정보 삭제 
	@GetMapping("/remove")
	public String remove(MemberDTO memberDTO, RedirectAttributes rttr, HttpSession session) {
		
		MemberDTO viewMember = (MemberDTO)session.getAttribute("user");
		String removeID = viewMember.getId();
		
		System.out.println("=============================");
		System.out.println("/removeMember : " +removeID);
		System.out.println("=============================");
		
		
		if(memberService.removeMember(removeID)) {
			rttr.addFlashAttribute("result", "success");
			session.invalidate();
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
	

	
	//로그아웃 시
	@GetMapping("/logOut")
	public String logOut(HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		return "redirect:/";
	}
	
//	@GetMapping("/list01")
//	public String list01() {
//		return "/board/list";
//	}
}

