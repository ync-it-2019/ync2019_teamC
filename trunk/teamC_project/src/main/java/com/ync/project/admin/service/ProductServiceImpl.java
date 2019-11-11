package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ync.project.domain.ReviewVO;
import com.ync.project.admin.mapper.ProductMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.ProductVO;
import com.ync.project.front.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ProductServiceImpl.java
  * @Date		: 2019. 11. 1. 
  * @Author		: 곽우렬
  * @프로그램 설명 :
  */
@Log4j
@Service
//@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	//@Setter(onMethod_ = @Autowired)
	//스프링 4.3이후 부터 묵시적 주입
	//BoardMappers는 interface인데 객체로 주입받았다?
	//Java proxy기법을 활용해 Mybatis는 MapperProxy라는
	//InvocationHandler 구현체를 이용
	//인터페이스의 구현체를 동적으로 생성
	@Autowired //or @Inject쓰면 
	//@AllArgsConstructor 쓸필요없음
	private ProductMapper mapper;
	
	@Override
	public void register(ProductVO product) {
		
		log.info("register......" + product);
		
		mapper.insert(product);
	}

	@Override
	public List<ProductVO> getList() {
		
		log.info("getList.......");
		
		return mapper.getList();
	}
	
	@Override
	public List<ProductVO> getListWithPaging(Criteria cri) {
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public ProductVO get(int product_num) {
		
		log.info("get......" + product_num);
		
		return mapper.read(product_num);
	}
	
	@Override
	public boolean modify(ProductVO product) {
		
		log.info("modify......" + product);
		
		return mapper.update(product) == 1;
	}
	
	@Override
	public boolean remove(int product_num) {
		
		log.info("remove...." + product_num);
		
		return mapper.delete(product_num) == 1;
	}
	
	@Override
	public int getTotal (Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
