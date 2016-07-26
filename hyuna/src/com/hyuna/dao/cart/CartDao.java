package com.hyuna.dao.cart;

import java.util.List;

import com.hyuna.vo.CartVO;

public interface CartDao {
	List<CartVO> cartList(CartVO cvo);
	int cartInsert(CartVO cvo);
}
