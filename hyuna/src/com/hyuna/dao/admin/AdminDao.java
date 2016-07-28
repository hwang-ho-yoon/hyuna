package com.hyuna.dao.admin;

import java.util.List;

import com.hyuna.vo.MemberVO;

public interface AdminDao {

	public List<MemberVO> memberList();

	public MemberVO memberDetail(MemberVO mvo);

}
