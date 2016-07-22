package com.hyuna.controller.board.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/board")
public class Faqcontroller {

	@RequestMapping("/faqList.do")
	public String listDepartment() {
		System.out.println("TESST");
		return "board/faqList";
	}
}
