package com.ync.project.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.Criteria;

import com.ync.project.domain.MemberVO;
import com.ync.project.domain.ReviewVO;

/**
  * @FileName	: MemberMapper.java
  * @Date		: 2019. 10. 23. 
  * @Author		: 곽우렬
  * @프로그램 설명 : 회원 정보 처리용 Mapper interface
  */
public interface MemberMapper {

	public MemberVO read(String userid);
	
	public List<MemberVO> getList();
	
	public void insert(MemberVO member);
	
	public void insert2(MemberVO member);
	
	public int delete(String ueserid);
	   
	public int update(MemberVO member);
	
	//전체 데이터의 개수 처리
		public int getTotalCount(Criteria cri);
		
		public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);

		public List<MemberVO> getListWithPaging(Criteria cri);
}
