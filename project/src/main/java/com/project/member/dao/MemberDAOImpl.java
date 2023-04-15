package com.project.member.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.member.mapper.MemberMapper;
import com.project.member.vo.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	MemberMapper memberMapper;

	@Override
	public void register(MemberDTO member) {
		memberMapper.insertMember(member);
	}

	@Override
	public MemberDTO viewMemberOne(Long no) {
		return memberMapper.selectMemberOne(no);
	}

	@Override
	public boolean updateMember(MemberDTO member) {
		return memberMapper.updateMember(member) !=0;
		// 1일 때, 즉 성공할 때 true  리턴 
	}

	@Override
	public boolean removeMember(Long no) {
		return memberMapper.delete(no) !=0;
	}

	@Override
	public List<MemberDTO> findMemberAll() {
		return memberMapper.selectMemberAll();
	}
	
	@Override
	public MemberDTO findMemberOne(MemberDTO member) {
		return memberMapper.findMemberOne(member);
	}
	
	@Override
	public int checkIdDuple(MemberDTO member) {
		return memberMapper.checkIdDuple(member);
	}
}	
