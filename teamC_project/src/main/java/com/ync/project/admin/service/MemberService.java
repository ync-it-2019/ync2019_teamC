package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.MemberVO;
import com.ync.project.domain.Criteria;

import com.ync.project.domain.MemberVO;

/**
  * @FileName	: MemberService.java
  * @Date		: 2019. 10. 29. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원 정보 처리용 Service interface
  */
public interface MemberService {
	public void register(MemberVO member);
	
	public MemberVO get(String userid);
	
	public List<MemberVO> getList();
	
	 public List<MemberVO> getListWithPaging(Criteria cri);

	public int getTotal(Criteria cri);

	public boolean modify(MemberVO member);
}
