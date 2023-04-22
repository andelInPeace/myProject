package com.project.board.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor // 기본 생성자 만들어줌 
public class pageDTO {
	 
	//현재 페이지를 기준으로 시작 페이지 
	private int startPage;
	// 현재 페이지를 기준으로 마지막 페이지 
	private int endPage;
	// 실제 마지막 페이지 
	private int realEnd;
	
	// 이전 버튼 다음 버튼 유무 여부 검사 
	private boolean prev, next;
	
	// realEnd 를 구하기 위해서는 게시글 전체 개수를 알아야 함 
	private int total; 
	// 현재 페이지(pageNum) 과 amount 를 같이 쓸거라서 
	private Criteria criteria;
	
	// total 과 criteria 는 외부에서 전달받을 거임 
	public pageDTO(int total, Criteria criteria) {
		super();
		this.total = total;
		this.criteria = criteria;
		
		// ceil(실수 값) : 올림 처리, 페이지에 게시글이 한 개라도 있다면, 올림을 하여 해당 페이지를 표시 
		this.endPage = (int)(Math.ceil(criteria.getPageNum() / (double)criteria.getAmount()))* criteria.getAmount();
		this.startPage = endPage - (criteria.getAmount() -1);
		
		this.realEnd = (int)Math.ceil(total * 1.0 / criteria.getAmount());
		
		// endPage 는 10의 배수이기 때문에 
		// realEnd 랑 endPage 를 비교하다가 realEnd < endPage 가 될 때 
		// realEnd 를  endPage 로 넣어줌
		if(this.realEnd < this.endPage) {
			this.endPage = this.realEnd;
		}
		
		// 1~10 : 1 단위
		// 11-20 : 2 단위 
		// ...
		// 이전 단위가 있는 경우 
		this.prev = this.startPage > 1;
		// 다음 단위가 있는 경우 
		this.next = this.endPage < this.realEnd;
	}

}
