package com.hyuna.dao.order;

import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductVO;

public interface OrderDao {

	public int orderGroupInsert(OrderGroupVO orderGroupVO);

	public int orderProductInsert(OrderProductVO oProductVO);

	public OrderGroupVO orderGroupDetail(String ogr_no);

}
