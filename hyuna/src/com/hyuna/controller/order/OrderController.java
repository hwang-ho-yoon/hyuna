package com.hyuna.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/order")
public class OrderController {

	@RequestMapping("/orderWrite.do")
	public String orderWrite() {
		return "order/orderWrite";
	}
	
	@RequestMapping("/orderPay.do")
	public String orderPay() {
		return "order/orderList";
	}
	
	@RequestMapping("/orderDetail.do")
	public String orderDetail() {
		return "order/orderDetail";
	}
}
