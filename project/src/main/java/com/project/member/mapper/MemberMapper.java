package com.project.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.member.vo.MemberDTO;

@Mapper
public interface MemberMapper {
	public void insertMember(MemberDTO member);
	public List<MemberDTO> selectMemberAll();
	// 회원 정보 조회 
	public MemberDTO selectMemberOne(MemberDTO member);
	// 회원 정보 수정 
	public int updateMember(MemberDTO member);
	public int delete(Long no); 
	// 로그인으로 회원 찾기 
	public MemberDTO findMemberOne(MemberDTO member);
	//회원가입시 아이디 
	public int checkIdDuple(MemberDTO memberDTO);
	
}
