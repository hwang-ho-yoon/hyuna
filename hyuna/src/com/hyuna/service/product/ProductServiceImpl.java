package com.hyuna.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.apache.log4j.Logger;

import com.hyuna.dao.product.ProductDao;
import com.hyuna.vo.ProductVO;
@Service	
@Transactional
public class ProductServiceImpl implements ProductService {
	Logger logger = Logger.getLogger(ProductServiceImpl.class);
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public int productInsert(ProductVO pvo) {
		// TODO Auto-generated method stub
		return productDao.productInsert(pvo);
	}

}
