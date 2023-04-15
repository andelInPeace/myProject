package com.project.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.member.vo.MemberDTO;

@Repository
public interface MemberDAO {
	
	public void register(MemberDTO member);
	public MemberDTO viewMemberOne(Long no);
	public boolean updateMember(MemberDTO member);
	public boolean removeMember(Long no);
	public List<MemberDTO> findMemberAll();
	public MemberDTO findMemberOne(MemberDTO member);

}
