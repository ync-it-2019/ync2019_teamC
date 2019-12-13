package com.ync.project.domain;

import java.sql.Date;

import lombok.Data;

/**
  * @FileName	: ProductVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품정보 VO
  */
@Data
public class ProductVO {
	private int product_num;
	private int costprice;
	private String product_name;
	private String theme;
	private String transportation;
	private String itinerary;
	private String country;
	private String city;
	private String hotel_tour;
	private Date arrival_date;
	private Date departure_date;
	private String main_check;
	private String main_img;
	private String slide_img1;
	private String slide_img2;
	private String slide_img3;
	private String slide_img4;

}

