package com.project.board.vo;

import lombok.Data;

@Data
public class BoardDTO {
	private Long bno;
	private String title;
	private String content;
	private String user_no;
	private String regDate;
	private String updateDate;
}
