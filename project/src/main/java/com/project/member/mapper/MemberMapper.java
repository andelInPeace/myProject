package com.project.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.member.vo.MemberDTO;

@Mapper
public interface MemberMapper {
	public void insertMember(MemberDTO member);
	public List<MemberDTO> selectMemberAll();
	public MemberDTO selectMemberOne(Long no);
	public int updateMember(MemberDTO member);
	public int delete(Long no); 
	// 로그인으로 회원 찾기 
	public MemberDTO findMemberOne(MemberDTO member);
	
}
