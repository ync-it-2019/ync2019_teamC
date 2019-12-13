package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: InquireService.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품문의 처리용 Service interface
  */
public interface InquireService {
	public void register(InquireVO inquire);
	
	public InquireVO get(long q_idx);
	
	public boolean modify(InquireVO inquire);
	
	public boolean modify2(InquireVO inquire);
	
	public boolean remove(long q_idx);
	
	public List<InquireVO> getList1();
	
	public List<InquireVO> getList2(int product_num);

	public List<InquireVO> getListWithPaging(Criteria cri);
	
	public List<InquireVO> getListWithPaging2(@Param("cri") Criteria cri, @Param("product_num") int product_num);

	int getTotal(Criteria cri);
}
