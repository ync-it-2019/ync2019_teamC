package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: ProductService.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
public interface ProductService {
	public void register(ProductVO product);
	
	public ProductVO get(int product_num);
	
	public boolean modify(ProductVO prodcut);
	
	public boolean remove(int product_num);
	
	public List<ProductVO> getList();

	public List<ProductVO> getListWithPaging(Criteria cri);

	int getTotal(Criteria cri);
}
