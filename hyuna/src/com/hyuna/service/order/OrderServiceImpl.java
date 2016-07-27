package com.hyuna.service.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyuna.dao.order.OrderDao;
import com.hyuna.vo.OrderGroupVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public int orderGroupInsert(OrderGroupVO orderGroupVO) {
		return orderDao.orderGroupInsert(orderGroupVO);
	}

}
