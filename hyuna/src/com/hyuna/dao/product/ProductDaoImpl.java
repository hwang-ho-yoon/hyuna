package com.hyuna.dao.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyuna.service.product.ProductService;
import com.hyuna.vo.ProductVO;
@Repository
public class ProductDaoImpl implements ProductService {
	@Autowired
	private SqlSession session;
	
	/*******************
	 * 글 입력 구현, 매개변수 로 파라미터값을 전달한다.
	 * ***************/	
	
	@Override
	public int productInsert(ProductVO pvo) {
		// TODO Auto-generated method stub
		return session.insert("prdInsert");
	}

}
