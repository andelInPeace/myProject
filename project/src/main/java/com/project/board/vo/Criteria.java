package com.project.board.vo;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
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
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String getParams() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("").queryParam("pageNum", this.pageNum);
		return builder.toUriString();
//		파라미터값 넘길 때 
//		?로 시작해서 pageNum = [this.pageNum] 이 value 값으로 들어가게 됨.  
//		이 문자열 값을 리턴하는 메소드 
//		게시글에서 사용할 때는 params 로 사용하면 됨. 
//		이 문자열은 ? 로 시작하기 때문에 front 화면에서 href (=board/read?~~) 넘길 때 ? 로 시작하면 안됨 
	}

}
