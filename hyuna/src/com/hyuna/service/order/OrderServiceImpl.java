package com.hyuna.service.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyuna.dao.order.OrderDao;
import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public int orderGroupInsert(OrderGroupVO orderGroupVO) {
		return orderDao.orderGroupInsert(orderGroupVO);
	}

	@Override
	public int orderProductInsert(OrderGroupVO orderGroupVO) {
		int result = 0;
		for (int i = 0; i < orderGroupVO.getOrderProductVO().size(); i++) {
			OrderProductVO productVO = orderGroupVO.getOrderProductVO().get(i);
			productVO.setOgr_no(orderGroupVO.getOgr_no());
			productVO.setPrd_d_no(1);
			result = orderDao.orderProductInsert(productVO);
		}
		return result;
	}

	@Override
	public OrderGroupVO orderGroupDetail(String ogr_no) {
		return orderDao.orderGroupDetail(ogr_no);
	}

	@Override
	public List<OrderGroupVO>selectOrderGroups(int mem_no) {
		return orderDao.selectOrderGroups(mem_no);
	}

	@Override
	public List<OrderProductVO> selectOrderProducts(int orderGroup_no) {
		return orderDao.selectOrderProducts(orderGroup_no);
	}

}
