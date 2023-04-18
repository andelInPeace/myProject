package com.project.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.member.vo.MemberDTO;

@Repository
public interface MemberDAO {
	
	// 회원 가입 
	public void register(MemberDTO member);
	// 회원 정보 조회 
	public MemberDTO viewMemberOne(MemberDTO member);
	// 회원 정보 수정 
	public boolean updateMember(MemberDTO member);
	public boolean removeMember(Long no);
	public List<MemberDTO> findMemberAll();
	// 로그인 
	public MemberDTO findMemberOne(MemberDTO member);
	// 아이디 중복 확인 
	public int checkIdDuple(MemberDTO member);

}
