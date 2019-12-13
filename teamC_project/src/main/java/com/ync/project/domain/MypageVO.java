package com.ync.project.domain;

import java.sql.Date;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @FileName	: MemberVO.java
 * @Date		: 2019. 12. 09. 
 * @Author		: 이준희
 * @프로그램 설명 : 마이페이지 VO
 */
@Data
public class MypageVO {
	private long re_idx;
	private String userid;
	private String product_name;
	private Date departure_date;	
	private Date arrival_date;
	private String status;
	private String price;


}
