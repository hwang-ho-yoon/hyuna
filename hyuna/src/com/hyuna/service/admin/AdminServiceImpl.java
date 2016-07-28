package com.hyuna.service.admin;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyuna.dao.admin.AdminDao;
import com.hyuna.vo.MemberVO;
@Service
@Transactional
public class AdminServiceImpl implements AdminService{
	Logger logger = Logger.getLogger(AdminServiceImpl.class);

	@Autowired
	private AdminDao admindDao;

	@Override
	public List<MemberVO> memberList() {
		List<MemberVO> list = null;
		list = admindDao.memberList();
		return list;
	}

	@Override
	public MemberVO memberDetail(MemberVO mvo) {		
		return admindDao.memberDetail(mvo);
	}

}
