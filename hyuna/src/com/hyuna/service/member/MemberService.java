package com.hyuna.service.member;

import java.util.List;

import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;

public interface MemberService {

	public int memberInsert(MemberVO mvo);

	public int idCheck(MemberVO mvo);

	public List<TermsVO> termsList();

	public MemberVO findidOk(MemberVO mvo);

}
