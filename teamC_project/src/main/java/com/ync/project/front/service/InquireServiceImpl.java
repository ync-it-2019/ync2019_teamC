package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ync.project.domain.ReviewVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.front.mapper.InquireMapper;
import com.ync.project.front.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: InquireServiceImpl.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원 정보 처리용 Service implement
  */
@Log4j
@Service
//@AllArgsConstructor
public class InquireServiceImpl implements InquireService{
	
	//@Setter(onMethod_ = @Autowired)
	//스프링 4.3이후 부터 묵시적 주입
	//BoardMappers는 interface인데 객체로 주입받았다?
	//Java proxy기법을 활용해 Mybatis는 MapperProxy라는
	//InvocationHandler 구현체를 이용
	//인터페이스의 구현체를 동적으로 생성
	@Autowired //or @Inject쓰면 
	//@AllArgsConstructor 쓸필요없음
	private InquireMapper mapper;
	
	@Override
	public void register(InquireVO inquire) {
		
		log.info("register......" + inquire);
		
		mapper.insertSelectKey(inquire);
	}

	@Override
	public List<InquireVO> getList1() {
		
		log.info("getList.......");
		
		return mapper.getList1();
	}
	
	@Override
	public List<InquireVO> getList2(int product_num) {
		
		log.info("getList.......");
		
		return mapper.getList2(product_num);
	}
	
	@Override
	public List<InquireVO> getListWithPaging(Criteria cri) {
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public List<InquireVO> getListWithPaging2(Criteria cri, int product_num) {
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging2(cri, product_num);
	}
	
	@Override
	public InquireVO get(long q_idx) {
		
		log.info("get......" + q_idx);
		
		return mapper.get(q_idx);
	}
	
	@Override
	public boolean modify(InquireVO inquire) {
		
		log.info("modify......" + inquire);
		
		return mapper.update(inquire) == 1;
	}
	
	@Override
	public boolean remove(long q_idx) {
		
		log.info("remove...." + q_idx);
		
		return mapper.delete(q_idx) == 1;
	}
	
	@Override
	public int getTotal (Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}

	@Override
	public boolean modify2(InquireVO inquire) {
		
		log.info("modify......" + inquire);
		
		return mapper.update2(inquire) == 1;
	}
}
