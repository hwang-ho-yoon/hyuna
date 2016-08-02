package com.hyuna.controller.door;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyuna.service.product.ProductService;
import com.hyuna.vo.ProductVO;

@Controller
@RequestMapping(value="/")
public class DoorController {
	Logger logger =Logger.getLogger(DoorController.class);
	@Autowired//BoardService로 구현된 구현체를 자동으로 찾아d와 setter를 불러 설정한다.
	private ProductService productService;
	
	//관리자
	//첨부파일 게시판	//파일의 realpath를 위해 request객체를 같이 보냄.
	@RequestMapping(value="adminIndex.do",  method = RequestMethod.GET)
	public String adminIndex(@ModelAttribute ProductVO pvo, Model model){
		logger.info("adminIndex호출성공");
		List<ProductVO> prdListLatest = productService.prdListLatest(pvo);
		List<ProductVO> prdListBest = productService.prdListBest(pvo);
		
		model.addAttribute("prdListLatest", prdListLatest);
		model.addAttribute("prdListBest", prdListBest);		
		
		return "door/adminIndex";
	}	
}
