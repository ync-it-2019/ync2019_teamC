package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

/**
  * @FileName	: ReservationVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 주문정보 VO
  */
@Data
public class ReservationVO {
	private Long re_idx;
	private int product_num;
	private String title;
	private String content;
	private String userid;
	private Date re_date;
	private Long price;
	private String status;

}

