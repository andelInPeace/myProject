package com.project.board.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class BoardVO {
	private Long bno;
	private String title;
	private String content;
	private String user_id;
	private String regDate;
	private String updateDate;
	private String secret;

}
