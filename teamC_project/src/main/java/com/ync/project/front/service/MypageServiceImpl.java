package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MypageVO;
import com.ync.project.domain.ReviewVO;
import com.ync.project.front.mapper.MypageMapper;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: MypageServiceImpl.java
  * @Date		: 2019. 12. 12. 
  * @Author		: 이준희	
  * @프로그램 설명 : 회원 정보 처리용 Service implement
  */
@Log4j
@Service
//@AllArgsConstructor
public class MypageServiceImpl implements MypageService{
	
	//@Setter(onMethod_ = @Autowired)
	//스프링 4.3이후 부터 묵시적 주입
	//BoardMappers는 interface인데 객체로 주입받았다?
	//Java proxy기법을 활용해 Mybatis는 MapperProxy라는
	//InvocationHandler 구현체를 이용
	//인터페이스의 구현체를 동적으로 생성
	@Autowired //or @Inject쓰면 
	//@AllArgsConstructor 쓸필요없음
	private MypageMapper mypage;

	@Override
	public List<MypageVO> getReservation(String userid) {
		// TODO Auto-generated method stub
		return mypage.get(userid);
	}

	@Override
	public List<MypageVO> get(String userid) {
		// TODO Auto-generated method stub
		return mypage.get(userid);
	}

	@Override
	public MypageVO read(String userid) {
		// TODO Auto-generated method stub
		return mypage.read(userid);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mypage.getTotalCount(cri);
	}


	@Override
	public List<MypageVO> getListWithPaging(Criteria cri, String userid) {
		// TODO Auto-generated method stub
		return mypage.getListWithPaging(userid, cri);
	}

	






	
//	@Override
//	public void register(InquireVO inquire) {
//		
//		log.info("register......" + inquire);
//		
//		mapper.insertSelectKey(inquire);
//	}

}
