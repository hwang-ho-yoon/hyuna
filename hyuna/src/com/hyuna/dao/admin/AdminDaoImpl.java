package com.hyuna.dao.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyuna.vo.MemberVO;
@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Autowired(required=false)
	private SqlSession session;

	@Override
	public List<MemberVO> memberList() {		
		return session.selectList("memberList");
	}

	@Override
	public MemberVO memberDetail(MemberVO mvo) {		
		return session.selectOne("memberDetail");
	}

}
