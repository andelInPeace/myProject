package com.project.member.vo;

import java.util.List;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Component
@JsonAutoDetect
@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
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
