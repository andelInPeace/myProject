package com.project.board.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Criteria {
	// 현재 페이지 
	private int pageNum;
	// 그 페이지에 뿌려질 게시글 갯수 
	private int amount;
	
	//기본 생성자 :외부에서 전달을 하든 안하든 default 값 정함 
	public Criteria() {
		// 현재 페이지 : 1
		// 1페이지당 10개 게시글 
		this(1, 10);
	}
	

}
