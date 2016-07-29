package com.hyuna.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyuna.common.page.Paging;
import com.hyuna.controller.member.MemberController;
import com.hyuna.service.admin.AdminService;
import com.hyuna.service.member.MemberService;
import com.hyuna.vo.AdminVO;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;
import com.hyuna.vo.Terms_agreeVO;


@Controller
@RequestMapping(value="/admin")
public class AdminController {
	Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;
		
	//회원목록 테이블
	@RequestMapping("/memberList")
	public String memberList(@ModelAttribute MemberVO mvo, Model model){
		logger.info("멤버리스트 호출");
		
		if(mvo.getOrder_by()==null)mvo.setOrder_by("mem_no");
		if(mvo.getOrder_sc()==null)mvo.setOrder_sc("DESC");

		Paging.setPage(mvo);
		
		int total = adminService.memberListCnt(mvo);

		List<MemberVO> list = adminService.memberList(mvo);
		model.addAttribute("memberList", list);		
		model.addAttribute("total", total);		
		model.addAttribute("data", mvo);		
		return "admin/memberList";
	}
	
	//회원테이블 디테일이동
	@RequestMapping("/memberDetail")
	public String memberDetail(@ModelAttribute MemberVO mvo, @RequestParam("mem_no") int mem_no, Model model){
		logger.info("디테일 호출");
		logger.info("멤노"+mvo.getMem_no());
		
		MemberVO detail = memberService.throwMember(mem_no);
		List<Terms_agreeVO> arg = adminService.memberDetail(mvo);
		List<TermsVO> list = memberService.termsList();
		
		model.addAttribute("list0", list.get(0));
		model.addAttribute("list1", list.get(1));	
		model.addAttribute("agr0", arg.get(0));
		model.addAttribute("agr1", arg.get(1));		
		
	/*	if(detail!=null && (!detail.equals(""))){
			detail.setB_content(detail.getB_content().toString().replaceAll("\n", "<br>"));
		}*/
		model.addAttribute("detail", detail);
		return "admin/memberDetail";
	}
	
	//로그인 화면이동
	@RequestMapping("/adminLogin")
	public String adminLogin(){
		logger.info("관리자로그인폼 호출");
		return "admin/adminLogin";
		
	}
	
	//로그인 체크
	@RequestMapping("/adminCheck")
	@ResponseBody
	public String adminCheck(@ModelAttribute AdminVO avo, HttpSession session){
		logger.info("관리자 로그인체크 호출");
				
		String str = "";
		AdminVO vo = adminService.adminCheck(avo);
		if(vo!=null){
			str = "success";
			session.setAttribute("admin", vo.getAdm_name());
		}
		
		return str;
	}
	
	//로그아웃
	@RequestMapping("/adminLogout")
	public String adminLogout(HttpSession session){			
		session.removeAttribute("admin");
		return "admin/adminLogin";
	}
}
