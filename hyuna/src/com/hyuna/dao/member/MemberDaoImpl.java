package com.hyuna.dao.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;
@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public int memberInsert(MemberVO mvo) {		
		return session.insert("memberInsert");
	}

	@Override
	public int idCheck(MemberVO mvo) {		
		return session.selectOne("idCheck");
	}

	@Override
	public List<TermsVO> termsList() {		
		return session.selectList("termsList");
	}

}
