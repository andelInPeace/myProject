package com.example.project.domain.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDTO {
	
	private Long user_no;
	private String name;
	private String id;
	private String pw;
	private String phone;
	private String email;
	private String regDate;
	private String updateDate;
	private String admin;
	

}
