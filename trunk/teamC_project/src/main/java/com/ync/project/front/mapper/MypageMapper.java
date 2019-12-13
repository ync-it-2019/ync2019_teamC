package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MypageVO;

/**
  * @FileName	: MypageMapper.java
  * @Date		: 2019. 12. 11. 
  * @Author		: 이준희
  * @프로그램 설명 : 회원 정보 수정용 Mapper interface
  */
public interface MypageMapper {
 

   	public List<MypageVO> get(String userid);
   	
   	
   	public MypageVO read(String userid);

	public List<MypageVO> getListWithPaging(@Param("userid") String userid, @Param("cri") Criteria cri);
	

	public List<MypageVO> getReservation(String userid);
	
	
	
	public int getTotalCount(Criteria cri);

     

}

