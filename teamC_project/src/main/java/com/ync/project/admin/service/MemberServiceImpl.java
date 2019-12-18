package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.MemberMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquireVO;
import com.ync.project.domain.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * @FileName	: MemberService.java
 * @Date		: 2019. 10. 29. 
 * @Author		: 곽우렬
 * @프로그램 설명 : 회원 정보 처리용 Service implement
 */
@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("register...." + member);
		mapper.insert(member);
	}
	
	@Override
	public void register2(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("register...." + member);
		mapper.insert2(member);
	}

	@Override
	public MemberVO get(String userid) {
		// TODO Auto-generated method stub
		log.info("get......." + userid);
		return mapper.read(userid);
	}

	@Override
	public List<MemberVO> getList() {
		// TODO Auto-generated method stub
		log.info("getList......");
		return mapper.getList();
	}

	@Override
	public List<MemberVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean modify(MemberVO member) {
		
		log.info("modify......" + member);
		
		return mapper.update(member) == 1;
	}

}
