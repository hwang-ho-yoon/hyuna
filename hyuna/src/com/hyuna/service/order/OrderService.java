package com.hyuna.service.order;

import com.hyuna.vo.OrderGroupVO;

public interface OrderService {
	public int orderGroupInsert(OrderGroupVO orderGroupVO);
	public int orderProductInsert(OrderGroupVO ogv);
	public OrderGroupVO orderGroupDetail(String ogr_no);
}
