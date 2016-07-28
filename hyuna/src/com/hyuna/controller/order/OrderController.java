package com.hyuna.controller.order;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyuna.service.order.OrderService;
import com.hyuna.util.OrderState;
import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderProductsVO;

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
	public String orderDetail() {
		return "order/orderDetail";
	}
	
	@RequestMapping("/orderInsert.do")
	@ResponseBody
	public String orderInsert(@ModelAttribute OrderProductsVO opv, @ModelAttribute OrderGroupVO ogv, HttpSession session) {
		logger.info("주문등록 호출");
		int mem_no = (int)session.getAttribute("hyunaMember");
		ogv.setMem_no(mem_no);
		if (ogv.getOgr_payPlan().equals("mutongjang")) {
			ogv.setOrg_state(OrderState.STANDBY_DEPOSIT);
		} else if (ogv.getOgr_payPlan().equals("card")) {
			ogv.setOrg_state(OrderState.COMPLETE_DEPOSIT);
			ogv.setOgr_approvalNo(ogv.getOgr_cardNo());
		}
		int result = orderService.orderGroupInsert(ogv);
		System.out.println("ffffffffffffffffffffffffffffffffffffff :" + ogv.getOgr_no());
		String url = "";
		if (result == 1) {
			url = "SUCCESS";
		} else {
			url = "FAIL";
		}
		return url;
	}
}
