package com.hyuna.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/order")
public class OrderController {

	@RequestMapping("/orderWrite.do")
	public String listDepartment() {
		System.out.println("TESST");
		return "order/orderWrite";
	}
}
