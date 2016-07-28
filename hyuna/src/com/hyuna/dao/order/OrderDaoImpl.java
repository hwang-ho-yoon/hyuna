package com.hyuna.dao.order;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyuna.vo.OrderGroupVO;
@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public int orderGroupInsert(OrderGroupVO orderGroupVO) {
		return session.insert("orderGroupInsert");
	}

}
