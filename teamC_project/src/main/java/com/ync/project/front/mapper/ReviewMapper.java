package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.Criteria;

import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: ReviewMapper.java
  * @Date		: 2019. 10. 30. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
public interface ReviewMapper {
  
   public List<ReviewVO> getList1();
   
   public void insert(ReviewVO review);
   
   public void insertSelectKey(ReviewVO review);
   
   public ReviewVO read(Long review_idx);
   
   public List<ReviewVO> getList2(int product_num);
   
   public int delete(Long review_idx);
   
   public int update(ReviewVO review);
   
 //전체 데이터의 개수 처리
 	public int getTotalCount(Criteria cri);
 	
 	public void updateReplyCnt(@Param("review_idx") Long bno, @Param("amount") int amount);

	public List<ReviewVO> getListWithPaging(@Param("cri") Criteria cri, @Param("product_num") int product_num);
 	}

