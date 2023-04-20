package com.project.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.member.dao.MemberDAO;
import com.project.member.vo.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDAO;

	@Override
	public void register(MemberDTO member) {
		memberDAO.register(member); 
	}

	@Override
	public MemberDTO viewMemberOne(MemberDTO member) {
		return memberDAO.viewMemberOne(member);
	}

	@Override
	public boolean updateMember(MemberDTO member) {
		return memberDAO.updateMember(member);
		//성공 시 0 건이 아니라면 (1건 이라면) true 가 리턴 
		// memberDAO.updatemember 자체가 불린이라서 !=0 수식 필요 없음. 
	}

	@Override
	public boolean removeMember(String id) {
		return memberDAO.removeMember(id);
	}

	@Override
	public List<MemberDTO> findMemberAll() {
		return memberDAO.findMemberAll();
	}
	
	@Override
	public MemberDTO loginMember(MemberDTO member) {
		return memberDAO.findMemberOne(member);
	}
	
	@Override
	public int checkIdDuple(MemberDTO member) {
		return memberDAO.checkIdDuple(member);
	}

}
