package com.hyuna.controller.member;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyuna.email.EmailMember;
import com.hyuna.service.member.MemberService;
import com.hyuna.vo.MemberVO;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
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
	
	//회원 인서트
	@RequestMapping("/memberInsert")
	public String memberInsert(@ModelAttribute MemberVO mvo, @RequestParam("tel") String tel, @RequestParam("tel1") String tel1,
			@RequestParam("tel2") String tel2, @RequestParam("mail1") String mail1, @RequestParam("mail2") String mail2) {		
		logger.info("인서트 호출");
		mvo.setMem_phone(tel+tel1+tel2);
		mvo.setMem_mail(mail1+"@"+mail2);
		//memberService.memberInsert(mvo,tel,tel1,tel2,mail1,mail2);
		
		if(mvo.getMem_mailCheck()!=null){
			EmailMember em = new EmailMember();
			em.setSendEmail(mvo);
		}
		
		return "member/loginform";
	}
	
	//아이디찾기
	@RequestMapping("/findid")
	public String findid() {
		logger.info("아이디찾기 호출");
		return "member/findid";
	}
	
	//아이디찾기 로직
	@ResponseBody
	@RequestMapping("/memberFindid")
	public String memberFindid(@ModelAttribute MemberVO mvo, @RequestParam("tel1") String tel1,
			@RequestParam("tel2") String tel2, @RequestParam("tel3") String tel3) {
		logger.info("아이디찾기 로직 호출");
		
		//memberService.memberFindId(mvo, tel1, tel2 ,tel3);
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
		em.setPwdEmail(mvo);
		return "member/loginform"; 
	}
}

