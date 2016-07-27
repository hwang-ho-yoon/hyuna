package com.hyuna.service.cart;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyuna.dao.cart.CartDao;
import com.hyuna.vo.CartVO;

@Service
@Transactional
public class CartServiceImpl implements CartService {
	Logger logger = Logger.getLogger(CartServiceImpl.class);
	
	@Autowired
	private CartDao cartDao;

	// 장바구니 목록 구현
	@Override
	public List<CartVO> cartList(CartVO cvo) {
		List<CartVO> list = null;
		list = cartDao.cartList(cvo);
		return list;
	}

	@Override
	public int cartInsert(CartVO cvo) {
		int result = 0;
		result = cartDao.cartInsert(cvo);
		return result;
	}
	
}
