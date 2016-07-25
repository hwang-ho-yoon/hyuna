package com.hyuna.dao.member;

import java.util.List;

import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;

public interface MemberDao {

	public int memberInsert(MemberVO mvo);

	public int idCheck(MemberVO mvo);

	public List<TermsVO> termsList();

}
