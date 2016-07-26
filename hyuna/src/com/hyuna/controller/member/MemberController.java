package com.hyuna.controller.member;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyuna.email.EmailMember;
import com.hyuna.service.member.MemberService;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;
import com.hyuna.vo.Terms_agreeVO;

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
	public String memberjoin(Model model) {		
		logger.info("회원가입 호출");
		
		List<TermsVO> list = memberService.termsList();
		
		model.addAttribute("list0", list.get(0));
		model.addAttribute("list1", list.get(1));
		return "member/memberjoin";
	}
	
	//회원 인서트
	@RequestMapping("/memberInsert")
	public String memberInsert(@ModelAttribute MemberVO mvo, @RequestParam("tel") String tel, @RequestParam("tel1") String tel1,
			@RequestParam("tel2") String tel2, @RequestParam("mail1") String mail1, @RequestParam("mail2") String mail2, 
			@RequestParam("ter_no0") int ter_no0, @RequestParam("ter_no1") int ter_no1, @ModelAttribute Terms_agreeVO tv,
			@RequestParam("agr_agreeCheck") String agr_agreeCheck, @RequestParam("agr_agreeCheck2") String agr_agreeCheck2){		
		logger.info("인서트 호출");
		mvo.setMem_tel(tel+tel1+tel2);
		mvo.setMem_mail(mail1+"@"+mail2);
		logger.info(tel+tel1+tel2);
		logger.info(mail1+"@"+mail2);
		
		int result = 0;
		String url = "";
		result = memberService.memberInsert(mvo);
				
		if(result==1){			
			if(mvo.getMem_mailCheck().equals("수신")){				
				EmailMember em = new EmailMember();
				em.setSendEmail(mvo);				
			}
			
			url = "/member/loginform.do";
			MemberVO mv = new MemberVO();
			mv = memberService.memberSelect(mvo);								
			tv.setTer_no(ter_no0);
			tv.setMem_no(mv.getMem_no());
			tv.setAgr_agreeCheck(agr_agreeCheck);

			result = memberService.agreeInsert(tv);
							
			if(result==1){
				mv = memberService.memberSelect(mvo);

				tv.setTer_no(ter_no1);
				tv.setMem_no(mv.getMem_no());
				tv.setAgr_agreeCheck(agr_agreeCheck2);
				
				result = memberService.agreeInsert(tv);
			}
		}
		
	
	return "redirect:"+url;
	}
	
	//아이디 중복확인
	@RequestMapping("/idCheck")
	@ResponseBody
	public String idCheck(@ModelAttribute MemberVO mvo){
		logger.info("아이디체크 호출");
		int result = 0;
		result = memberService.idCheck(mvo);
		return result+"";
		
	}
	
	//로그인 체크
	@RequestMapping("/loginCheck")
	@ResponseBody
	public String loginCheck(@ModelAttribute MemberVO mvo, Model model){
		logger.info("로그인체크 호출");
		
		String str = "";
		MemberVO vo = memberService.loginCheck(mvo);
		if(vo!=null&&(!vo.equals(""))){
			str = "success";
			
		}		
		model.addAttribute("mvo", vo);
		return str;
	}
	
	//아이디찾기
	@RequestMapping("/findid")
	public String findid() {
		logger.info("아이디찾기 호출");
		return "member/findid";
	}
	
	//아이디찾기 로직
	@RequestMapping("/findidOk")
	@ResponseBody
	public String findidOk(@ModelAttribute MemberVO mvo, Model model){
		logger.info("아이디찾기 로직 호출");
		
		String str = "";		
		MemberVO vo = memberService.findidOk(mvo);
		if(vo!=null&&(!vo.equals(""))){
			str = "success";
		}
		model.addAttribute("member", vo);
		System.out.println("이름"+vo.getMem_name());
		System.out.println("노"+vo.getMem_no());
		return str;
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
	
	//비밀번호 찾기 로직
	@RequestMapping("/memberPw")
	public String memberPw(@ModelAttribute MemberVO mvo) {		
		logger.info("비밀번호 메일발송 호출");
		EmailMember em = new EmailMember();			
		mvo.setMem_pwd(em.getRandomPassword(10));
				
		int result = 0;
		result = memberService.memberPw(mvo);
		if(result==1){
			em.setPwdEmail(mvo);
		}
		System.out.println(em.getRandomPassword(10));
		System.out.println(mvo.getMem_mail());
		System.out.println(mvo.getMem_name());
		System.out.println(mvo.getMem_id());
		
		return "member/loginform";
		
	}
	
}

