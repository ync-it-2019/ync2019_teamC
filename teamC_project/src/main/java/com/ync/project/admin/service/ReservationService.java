package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReservationVO;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: ReviewService.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 구매 정보 처리용 Service interface
  */
public interface ReservationService {
	public void register(ReservationVO reservation);
	
	public ReservationVO get(Long re_idx);
	
	public ReservationVO get2(int product_num);
	
	public boolean modify(ReservationVO reservation);
	
	public boolean remove(Long re_idx);
	
	public List<ReservationVO> getList();

	public List<ReservationVO> getListWithPaging(Criteria cri);

	int getTotal(Criteria cri);
}
