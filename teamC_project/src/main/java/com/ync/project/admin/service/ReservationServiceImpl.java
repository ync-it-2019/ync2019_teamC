package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ync.project.domain.ReviewVO;
import com.ync.project.admin.mapper.ReservationMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ReservationVO;
import com.ync.project.front.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ReviewServiceImpl.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@Log4j
@Service
//@AllArgsConstructor
public class ReservationServiceImpl implements ReservationService{
	
	//@Setter(onMethod_ = @Autowired)
	//스프링 4.3이후 부터 묵시적 주입
	//BoardMappers는 interface인데 객체로 주입받았다?
	//Java proxy기법을 활용해 Mybatis는 MapperProxy라는
	//InvocationHandler 구현체를 이용
	//인터페이스의 구현체를 동적으로 생성
	@Autowired //or @Inject쓰면 
	//@AllArgsConstructor 쓸필요없음
	private ReservationMapper mapper;
	
	@Override
	public void register(ReservationVO reservation) {
		
		log.info("register......" + reservation);
		
		mapper.insertSelectKey(reservation);
	}

	@Override
	public List<ReservationVO> getList() {
		
		log.info("getList.......");
		
		return mapper.getList();
	}
	
	@Override
	public List<ReservationVO> getListWithPaging(Criteria cri) {
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public ReservationVO get(Long re_idx) {
		
		log.info("get......" + re_idx);
		
		return mapper.read(re_idx);
	}
	
	@Override
	public boolean modify(ReservationVO reservation) {
		
		log.info("modify......" + reservation);
		
		return mapper.update(reservation) == 1;
	}
	
	@Override
	public boolean remove(Long re_idx) {
		
		log.info("remove...." + re_idx);
		
		return mapper.delete(re_idx) == 1;
	}
	
	@Override
	public int getTotal (Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
