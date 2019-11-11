package com.ync.project.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;
import com.ync.project.domain.ReservationVO;
import com.ync.project.domain.ReviewVO;


/**
  * @FileName	: ReservationMapper.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
public interface ReservationMapper {
  
   public List<ReservationVO> getList();
   
   public void insert(ReservationVO reservation);
   
   public void insertSelectKey(ReservationVO reservation);
   
   public ReservationVO read(long re_idx);
   
   public int delete(long re_idx);
   
   public int update(ReservationVO reservation);
   
 //전체 데이터의 개수 처리
 	public int getTotalCount(Criteria cri);
 	
 	public void updateReplyCnt(@Param("re_idx") Long bno, @Param("amount") int amount);

	public List<ReservationVO> getListWithPaging(Criteria cri);
 	}

