package com.hyuna.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductsVO;

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
	
	@RequestMapping("/orderInsert.do")
	public String orderInsert(@ModelAttribute OrderProductsVO opv, @ModelAttribute OrderGroupVO ogv) {
		System.out.println(opv.getOrderProductVO().size());
		return "order/orderDetail";
	}
}
