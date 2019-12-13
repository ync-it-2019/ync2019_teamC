package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: ReviewService.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 평 처리용 Service interface
  */
public interface ReviewService {
	public void register(ReviewVO review);
	
	public ReviewVO get(long review_idx);
	
	public List<ReviewVO> getList2(int product_num);
	
	public boolean modify(ReviewVO review);
	
	public boolean remove(long review_idx);
	
	public List<ReviewVO> getList1();

	public List<ReviewVO> getListWithPaging(@Param("cri") Criteria cri, @Param("product_num") int product_num);

	int getTotal(Criteria cri);
}
