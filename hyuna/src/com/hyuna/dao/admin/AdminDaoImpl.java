package com.hyuna.dao.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyuna.vo.AdminVO;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;
import com.hyuna.vo.Terms_agreeVO;
@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<MemberVO> memberList(MemberVO mvo) {		
		return session.selectList("memberList");
	}

	@Override
	public List<Terms_agreeVO> memberDetail(MemberVO mvo) {		
		return session.selectList("memberDetail");
	}

	@Override
	public AdminVO adminCheck(AdminVO avo) {		
		return session.selectOne("adminCheck");
	}

	@Override
	public int memberListCnt(MemberVO mvo) {		
		return session.selectOne("memberListCnt");
	}

}
