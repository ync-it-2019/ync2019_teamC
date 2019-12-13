package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;

import com.ync.project.domain.InquireVO;

/**
  * @FileName	: InquireMapper.java
  * @Date		: 2019. 10. 30. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품문의 처리용 Mapper interface
  */
public interface InquireMapper {
 
   public List<InquireVO> getList1();
   
   public List<InquireVO> getList2(int product_num);
   
   public void insert(InquireVO Inquire);
   
   public void insertSelectKey(InquireVO inquire);
  
   public InquireVO get(long q_idx);
   
   public int delete(long q_idx);
   
   public int update(InquireVO inquire);
   
   public int update2(InquireVO inquire);
   
 //전체 데이터의 개수 처리
 	public int getTotalCount(Criteria cri);
 	
 	public void updateReplyCnt(@Param("q_idx") Long bno, @Param("amount") int amount);

	public List<InquireVO> getListWithPaging(Criteria cri);
	
	public List<InquireVO> getListWithPaging2(@Param("cri") Criteria cri, @Param("product_num") int product_num);


	
 	}

