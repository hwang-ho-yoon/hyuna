package com.hyuna.service.admin;

import java.util.List;

import com.hyuna.vo.MemberVO;

public interface AdminService {

	public List<MemberVO> memberList();

	public MemberVO memberDetail(MemberVO mvo);

}
