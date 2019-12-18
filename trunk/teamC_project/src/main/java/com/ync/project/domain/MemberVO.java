package com.ync.project.domain;

import java.util.List;

import lombok.Data;

/**
  * @FileName	: MemberVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원정보 VO
  */
@Data
public class MemberVO {
	
	// userid, userpw 이름은 그대로 사용하고 나머지는 프로젝트별 생성한 table 컬럼명에 맞춰 작성
	// spring security 적용으로 로그인 시 소스를 교재 소스 그대로 사용하기 위해.
	private String userid;
	private String name;
	private String userpw;
	private String phone;
	private String email;
	private String sex;
	private String auth;
	private List<AuthVO> authList;

}
