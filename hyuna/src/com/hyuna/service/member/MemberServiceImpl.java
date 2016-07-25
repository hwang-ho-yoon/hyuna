package com.hyuna.service.member;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyuna.dao.member.MemberDao;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;

@Service
@Transactional
public class MemberServiceImpl implements MemberService{
	
	Logger logger = Logger.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public int memberInsert(MemberVO mvo) {
		int result = 0;
		result = memberDao.memberInsert(mvo);
		return result;
	}

	@Override
	public int idCheck(MemberVO mvo) {
		int result = 0;
		result = memberDao.idCheck(mvo);
		return result;
	}

	@Override
	public List<TermsVO> termsList() {
		List<TermsVO> list = memberDao.termsList();
		return list;
	}

	@Override
	public MemberVO findidOk(MemberVO mvo) {		
		return memberDao.findidOk(mvo); 
	}

}
