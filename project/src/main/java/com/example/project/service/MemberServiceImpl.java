package com.example.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.domain.dao.MemberDAO;
import com.example.project.domain.vo.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDAO;

	@Override
	public void register(MemberDTO member) {
		memberDAO.register(member); 
	}

	@Override
	public MemberDTO viewMemberOne(Long no) {
		return memberDAO.viewMemberOne(no);
	}

	@Override
	public boolean updateMember(MemberDTO member) {
		return memberDAO.updateMember(member);
		//성공 시 0 건이 아니라면 (1건 이라면) true 가 리턴 
		// memberDAO.updatemember 자체가 불린이라서 !=0 수식 필요 없음. 
	}

	@Override
	public boolean removeMember(Long no) {
		return memberDAO.removeMember(no);
	}

	@Override
	public List<MemberDTO> findMemberAll() {
		return memberDAO.findMemberAll();
	}
	
	@Override
	public MemberDTO loginMember(MemberDTO member) {
		return memberDAO.findMemberOne(member);
	}

}
