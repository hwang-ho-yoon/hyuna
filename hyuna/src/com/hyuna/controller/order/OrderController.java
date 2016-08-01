package com.hyuna.controller.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyuna.service.order.OrderService;
import com.hyuna.util.OrderState;
import com.hyuna.util.RecallCancel;
import com.hyuna.vo.OrderGroupVO;
import com.hyuna.vo.OrderRecallCancelVO;

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
	
	@RequestMapping("/orderList.do")
	public String orderList(Model model, HttpSession session) {
		int mem_no = (int)session.getAttribute("hyunaMember");
		List<OrderGroupVO> orderGroupsVOs = orderService.selectOrderGroups(mem_no);
		for (int i = 0; i < orderGroupsVOs.size(); i++) {
			OrderGroupVO orderGroupsVO = orderGroupsVOs.get(i);
			orderGroupsVO.setOrderProductVO(orderService.selectOrderProducts(orderGroupsVO.getOgr_no()));
		}
		model.addAttribute("orderGroups", orderGroupsVOs);
		return "order/orderList";
	}
	
	@RequestMapping("/orderDetail.do")
	public String orderDetail(@RequestParam("ogr_no") String ogr_no, Model model) {
		OrderGroupVO ogv = orderService.orderGroupDetail(ogr_no);
		model.addAttribute("orderGroup", ogv);
		return "order/orderDetail";
	}
	
	@RequestMapping("/orderCancel.do")
	public String orderCancel(@ModelAttribute OrderRecallCancelVO recallCancel) {
		logger.info("주문취소 호출");
		recallCancel.setRnc_gbn(OrderState.CANCEL);
		orderService.orderGroupUpdate(recallCancel);
		orderService.orderCancelRecallInsert(recallCancel);
		return "redirect:"+"/order/orderList.do";
	}
	
	@RequestMapping("/orderRecall.do")
	public String orderRecall(@ModelAttribute OrderRecallCancelVO recallCancel) {
		logger.info("주문반품 호출");
		recallCancel.setRnc_gbn(OrderState.RECALL);
		orderService.orderGroupUpdate(recallCancel);
		orderService.orderCancelRecallInsert(recallCancel);
		return "redirect:"+"/order/orderList.do";
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
