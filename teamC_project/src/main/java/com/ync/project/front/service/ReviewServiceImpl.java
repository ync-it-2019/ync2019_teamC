package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ync.project.domain.ReviewVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ReviewServiceImpl.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 상품 평 처리용 Service implement
  */
@Log4j
@Service
//@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService{
	
	//@Setter(onMethod_ = @Autowired)
	//스프링 4.3이후 부터 묵시적 주입
	//BoardMappers는 interface인데 객체로 주입받았다?
	//Java proxy기법을 활용해 Mybatis는 MapperProxy라는
	//InvocationHandler 구현체를 이용
	//인터페이스의 구현체를 동적으로 생성
	@Autowired //or @Inject쓰면 
	//@AllArgsConstructor 쓸필요없음
	private ReviewMapper mapper;
	
	@Override
	public void register(ReviewVO review) {
		
		log.info("register......" + review);
		
		mapper.insertSelectKey(review);
	}

	@Override
	public List<ReviewVO> getList1() {
		
		log.info("getList.......");
		
		return mapper.getList1();
	}
	
	@Override
	public List<ReviewVO> getListWithPaging(Criteria cri, int product_num) {
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri, product_num);
	}
	
	@Override
	public ReviewVO get(long review_idx) {
		
		log.info("get......" + review_idx);
		
		return mapper.read(review_idx);
	}
	
	@Override
	public boolean modify(ReviewVO review) {
		
		log.info("modify......" + review);
		
		return mapper.update(review) == 1;
	}
	
	@Override
	public boolean remove(long review_idx) {
		
		log.info("remove...." + review_idx);
		
		return mapper.delete(review_idx) == 1;
	}
	
	@Override
	public int getTotal (Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<ReviewVO> getList2(int product_num) {
		// TODO Auto-generated method stub
		return mapper.getList2(product_num);
	}
	}
