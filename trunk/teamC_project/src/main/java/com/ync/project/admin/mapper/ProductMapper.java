package com.ync.project.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.ProductVO;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: ProductMapper.java
  * @Date		: 2019. 11. 01. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 정보 처리용 Mapper interface
  */
public interface ProductMapper {
  
   public List<ProductVO> getList();
   
   public void insert(ProductVO product);
   
   public void insertSelectKey(ProductVO product);
   
   public ProductVO read(int product_num);
   
   
   public int delete(int product_num);
   
   public int update(ProductVO product);
   
 //전체 데이터의 개수 처리
 	public int getTotalCount(Criteria cri);
 	
 	public void updateReplyCnt(@Param("product_num") Long bno, @Param("amount") int amount);

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public List<ProductVO> getListWithPaging2(Criteria cri);
 	}

