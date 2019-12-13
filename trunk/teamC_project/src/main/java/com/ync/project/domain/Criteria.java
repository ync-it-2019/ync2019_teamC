package com.ync.project.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
  * @FileName	: Criteria.java
  * @Date		: 2019. 11. 02. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 검색 조건 처리를 위한 Criteria클래스
  */
@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {//검색조건을 배열로 만들어서
		//한번에 처리하기 위해 이용
		return type == null? new String[] {}: type.split("");
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
				
	}
}
