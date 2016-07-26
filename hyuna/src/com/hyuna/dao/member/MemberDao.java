package com.hyuna.dao.member;

import java.util.List;

import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;
import com.hyuna.vo.Terms_agreeVO;

public interface MemberDao {

	public int memberInsert(MemberVO mvo);

	public int idCheck(MemberVO mvo);

	public List<TermsVO> termsList();

	public MemberVO findidOk(MemberVO mvo);

	public MemberVO memberSelect(MemberVO mvo);

	public int agreeInsert(Terms_agreeVO tv);

	public MemberVO loginCheck(MemberVO mvo);

	public int memberPw(MemberVO mvo);

}
