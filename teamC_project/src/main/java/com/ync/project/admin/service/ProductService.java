package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.ProductVO;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: ProductService.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 정보 처리용 Service interface
  */
public interface ProductService {
	public void register(ProductVO product);
	
	public boolean modify(ProductVO prodcut);
	
	public boolean remove(int product_num);
	
	public List<ProductVO> getList();

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public List<ProductVO> getListWithPaging2(Criteria cri);
	
	int getTotal(Criteria cri);

	ProductVO get(int product_num);







	
}
