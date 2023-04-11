package com.example.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.project.domain.vo.MemberDTO;

@Mapper
public interface MemberMapper {
	public void insertMember(MemberDTO memberDTO);
	public List<MemberDTO> selectMemberAll();
	public MemberDTO selectMemberOne(Long num);
	public void updateMember(MemberDTO memberDTO);
	public int delete(Long num);
	
}
