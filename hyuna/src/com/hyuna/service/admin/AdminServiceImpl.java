package com.hyuna.service.admin;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyuna.dao.admin.AdminDao;
import com.hyuna.vo.AdminVO;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;
import com.hyuna.vo.Terms_agreeVO;
@Service
@Transactional
public class AdminServiceImpl implements AdminService{
	Logger logger = Logger.getLogger(AdminServiceImpl.class);

	@Autowired
	private AdminDao adminDao;

	@Override
	public List<MemberVO> memberList(MemberVO mvo) {
		List<MemberVO> list = null;
		list = adminDao.memberList(mvo);
		return list;
	}

	@Override
	public List<Terms_agreeVO> memberDetail(MemberVO mvo) {		
		return adminDao.memberDetail(mvo);
	}

	@Override
	public AdminVO adminCheck(AdminVO avo) {		
		return adminDao.adminCheck(avo);
	}

	@Override
	public int memberListCnt(MemberVO mvo) {		
		return adminDao.memberListCnt(mvo);
	}

}
