package com.hyuna.controller.order;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyuna.service.order.OrderService;
import com.hyuna.util.OrderState;
import com.hyuna.vo.OrderGroupVO;

@Controller
@RequestMapping(value="/order")
public class OrderController {

	Logger logger = Logger.getLogger(OrderController.class);
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/orderWrite.do")
	public String orderWrite() {
		return "order/orderWrite";
	}
	
	@RequestMapping("/orderPay.do")
	public String orderPay() {
		return "order/orderList";
	}
	
	@RequestMapping("/orderDetail.do")
	public String orderDetail(@RequestParam("ogr_no") String ogr_no, Model model) {
		OrderGroupVO ogv = orderService.orderGroupDetail(ogr_no);
		model.addAttribute("orderGroup", ogv);
		return "order/orderDetail";
	}
	
	@RequestMapping("/orderInsert.do")
	public String orderInsert(@ModelAttribute OrderGroupVO ogv) {
		logger.info("주문등록 호출");
		if (ogv.getOgr_payPlan().equals("mutongjang")) {
			ogv.setOgr_state(OrderState.STANDBY_DEPOSIT);
		} else if (ogv.getOgr_payPlan().equals("card")) {
			ogv.setOgr_state(OrderState.COMPLETE_DEPOSIT);
			ogv.setOgr_approvalNo(ogv.getOgr_cardNo());
		}
		int result = orderService.orderGroupInsert(ogv);
		result = orderService.orderProductInsert(ogv);
		String url = "";
		if (result == 1) {
			url = "/order/orderDetail.do?ogr_no="+ogv.getOgr_no();
		} else {
			url = "/order/orderWrite.do";
		}
		return "redirect:"+url;
	}
}
