package com.hyuna.controller.cart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/cart")
public class CartController {
	
	// 장바구니 리스트 화면
	@RequestMapping("/cart.do")
	public String cartList() {
		//System.out.println("test");
		return "cart/cart";
	}
	
}
