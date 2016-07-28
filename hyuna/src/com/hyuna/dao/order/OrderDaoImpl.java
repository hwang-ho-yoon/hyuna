package com.hyuna.dao.order;

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

}
