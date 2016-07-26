package com.hyuna.controller.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyuna.service.cart.CartService;
import com.hyuna.vo.CartVO;


@Controller
@RequestMapping(value="/cart")
public class CartController {
	Logger logger = Logger.getLogger(CartController.class);
	
	@Autowired
	private CartService cartService;
	
	// 장바구니 리스트 화면
	@RequestMapping("/cart.do")
	public String cart() {
		//System.out.println("test");
		return "cart/cart";
	}
	
	// 장바구니 목록 구현
	@RequestMapping(value="/cartList.do", method=RequestMethod.GET)
	public String cartList(@ModelAttribute CartVO cvo, Model model) {
		logger.info("cartList 호출 성공");
		
		List<CartVO> cartList = cartService.cartList(cvo);
		model.addAttribute("cartList", cartList);
		
		return "board/cartList";
	}
	
	
	
	/*// 장바구니 등록
	@RequestMapping(value="/cartInsert", method=RequestMethod.POST)
	public String cartInsert(@ModelAttribute CartVO cvo, HttpServletRequest request) throws IllegalStateException, IOException {
		logger.info("cartInsert 호출 성공");
		
		int result = 0;
		String url = "";
		
		result = cartService.cartInsert(cvo);
		if(result == 1) {
			url = "/cart/cart.do";
		}
		
		return "redirect : " + url;
	}*/
}
