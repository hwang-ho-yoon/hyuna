package com.hyuna.dao.admin;

import java.util.List;

import com.hyuna.vo.AdminVO;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.Terms_agreeVO;

public interface AdminDao {

	public List<MemberVO> memberList(MemberVO mvo);

	public List<Terms_agreeVO> memberDetail(MemberVO mvo);

	public AdminVO adminCheck(AdminVO avo);

	public int memberListCnt(MemberVO mvo);

}
