package com.hyuna.controller.member;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyuna.email.EmailMember;
import com.hyuna.vo.MemberVO;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	Logger logger = Logger.getLogger(MemberController.class);
	
	//로그인화면
	@RequestMapping("/loginform")
	public String loginform() {
		logger.info("로그인 호출");
		return "member/loginform";
	}
	
	//회원가입
	@RequestMapping("/memberjoin")
	public String memberjoin() {
		logger.info("회원가입 호출");
		return "member/memberjoin";
	}
	
	//아이디찾기
	@RequestMapping("/findid")
	public String findid() {
		logger.info("아이디찾기 호출");
		return "member/findid";
	}
	
	//비밀번호찾기
	@RequestMapping("/findpw")
	public String findpw() {
		logger.info("비밀번호찾기 호출");
		return "member/findpw";
	}
	
	//비밀번호 메일발송 테스트
	@RequestMapping("/memberPw")
	public String memberPw(@RequestParam("mem_mail") String mem_mail) {		
		logger.info("비밀번호 메일발송 호출");
		MemberVO mvo = new MemberVO();
		mvo.setMem_mail(mem_mail);
		EmailMember em = new EmailMember();
		em.setSendEmail(mvo);
		return "member/loginform"; 
	}
}

