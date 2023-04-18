package com.project.member.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.member.vo.MemberDTO;

@Service
public interface MemberService {
	
	// 회원 등록 
	public void register(MemberDTO memberDTO);
	// 특정 회원 정보 가져오기 
	public MemberDTO viewMemberOne(MemberDTO memberDTO);
	//특정 회원 수정 
	public boolean updateMember(MemberDTO memberDTO);
	//특정 회원 삭제 
	public boolean removeMember(Long no);
	//전체 회원 조회 
	public List<MemberDTO> findMemberAll();
	// 로그인 시 회원 조회 
	public MemberDTO loginMember(MemberDTO memberDTO);
	
	// 회원가입시 아이디 중복 확인 
	public int checkIdDuple(MemberDTO memberDTO);
	
}
