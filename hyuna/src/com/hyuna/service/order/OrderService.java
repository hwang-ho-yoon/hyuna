package com.hyuna.service.order;

import java.util.List;

import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductVO;

public interface OrderService {
	public int orderGroupInsert(OrderGroupVO orderGroupVO);
	public int orderProductInsert(OrderGroupVO ogv);
	public OrderGroupVO orderGroupDetail(String ogr_no);
	public List<OrderGroupVO> selectOrderGroups(int mem_no);
	public List<OrderProductVO> selectOrderProducts(int orderGroup_no);
}
