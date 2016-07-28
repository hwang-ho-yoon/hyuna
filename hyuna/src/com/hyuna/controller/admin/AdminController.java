package com.hyuna.controller.admin;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyuna.controller.member.MemberController;
import com.hyuna.service.admin.AdminService;
import com.hyuna.service.member.MemberService;
import com.hyuna.vo.MemberVO;
import com.hyuna.vo.TermsVO;


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
	public String memberList(Model model){
		logger.info("멤버리스트 호출");
		
		List<MemberVO> list = adminService.memberList();
		model.addAttribute("memberList", list);		
		return "admin/memberList";
	}
	
	//회원테이블 디테일이동
	@RequestMapping("/memberDetail")
	public String memberDetail(@ModelAttribute MemberVO mvo, @RequestParam("mem_no") int mem_no, Model model){
		logger.info("디테일 호출");
		logger.info("멤노"+mvo.getMem_no());
		
		MemberVO detail = memberService.throwMember(mem_no);
		
		List<TermsVO> list = memberService.termsList();
		
		model.addAttribute("list0", list.get(0));
		model.addAttribute("list1", list.get(1));		
		
	/*	if(detail!=null && (!detail.equals(""))){
			detail.setB_content(detail.getB_content().toString().replaceAll("\n", "<br>"));
		}*/
		model.addAttribute("detail", detail);
		return "admin/memberDetail";
	}
}
