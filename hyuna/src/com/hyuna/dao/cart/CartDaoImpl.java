package com.hyuna.dao.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.hyuna.vo.CartVO;

public class CartDaoImpl implements CartDao {

	@Autowired
	private SqlSession session;
	
	// 장바구니 목록 구현
	@Override
	public List<CartVO> cartList(CartVO cvo) {
		return session.selectList("cartList");
	}

	// 장바구니 등록
	@Override
	public int cartInsert(CartVO cvo) {
		return session.insert("cartInsert");
	}

	@Override
	public int cartAllDelete(CartVO cvo) {
		return session.delete("cartDelete");
	}	
}
