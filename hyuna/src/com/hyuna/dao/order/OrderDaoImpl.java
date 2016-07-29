package com.hyuna.dao.order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductVO;
@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public int orderGroupInsert(OrderGroupVO orderGroupVO) {
		return session.insert("orderGroupInsert", orderGroupVO);
	}

	@Override
	public int orderProductInsert(OrderProductVO oProductVO) {
		return session.insert("orderProductInsert", oProductVO);
	}

	@Override
	public OrderGroupVO orderGroupDetail(String ogr_no) {
		return session.selectOne("orderGroupDetail", ogr_no);
	}

	@Override
	public List<OrderGroupVO> selectOrderGroups(int mem_no) {
		return session.selectOne("selectOrderGroups", mem_no);
	}

	@Override
	public List<OrderProductVO> selectOrderProducts(int orderGroup_no) {
		return session.selectList("selectOrderProducts", orderGroup_no);
	}

}
