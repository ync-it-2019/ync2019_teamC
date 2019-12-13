package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

/**
  * @FileName	: InquireVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품문의 VO
  */
@Data
public class InquireVO {
	private long q_idx;
	private int product_num;
	private String title;
	private String content;
	private String userid;
	private Date writedate;
	private String answer_check;
	private String answer;
}

