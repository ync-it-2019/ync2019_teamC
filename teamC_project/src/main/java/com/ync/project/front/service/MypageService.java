package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MypageVO;
import com.ync.project.domain.ReviewVO;


/**
  * @FileName	: MypageService.java
  * @Date		: 2019. 12. 10. 
  * @Author		: 이준희
  * @프로그램 설명 : 상품문의 처리용 Service interface
  */
public interface MypageService {
	public List<MypageVO> getReservation(String userid);
	
	public List<MypageVO> get(String userid);
	
	public MypageVO read(String userid);
	
	public List<MypageVO> getListWithPaging(@Param("cri") Criteria cri, @Param("userid") String userid);
	
	int getTotal(Criteria cri);

	

	
}
