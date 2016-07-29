package com.hyuna.dao.order;

import java.util.List;

import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductVO;

public interface OrderDao {

	public int orderGroupInsert(OrderGroupVO orderGroupVO);

	public int orderProductInsert(OrderProductVO oProductVO);

	public OrderGroupVO orderGroupDetail(String ogr_no);

	public List<OrderGroupVO> selectOrderGroups(int mem_no);

	public List<OrderProductVO> selectOrderProducts(int orderGroup_no);

}
