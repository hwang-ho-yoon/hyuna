package com.hyuna.dao.order;

import java.util.List;

import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductVO;
import com.hyuna.vo.OrderRecallCancelVO;

public interface OrderDao {

	public int orderGroupInsert(OrderGroupVO orderGroupVO);

	public int orderProductInsert(OrderProductVO oProductVO);

	public OrderGroupVO orderGroupDetail(String ogr_no);

	public List<OrderGroupVO> selectOrderGroups(int mem_no);

	public List<OrderProductVO> selectOrderProducts(int orderGroup_no);

	public int orderCancelRecallInsert(OrderRecallCancelVO recallCancel);

	public int orderGroupUpdate(OrderRecallCancelVO recallCancel);

}
