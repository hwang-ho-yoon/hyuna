package com.hyuna.controller.product;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyuna.service.product.ProductService;
import com.hyuna.vo.ProductVO;



@Controller
@RequestMapping(value="/prd")
public class ProductController {
	Logger logger =Logger.getLogger(ProductController.class);
	@Autowired//BoardService로 구현된 구현체를 자동으로 찾아d와 setter를 불러 설정한다.
	private ProductService productService;

	//첨부파일 게시판	//파일의 realpath를 위해 request객체를 같이 보냄.
	@RequestMapping(value="/productInsert.do",  method = RequestMethod.POST)
	public String boardInsert(@ModelAttribute ProductVO pvo){
		logger.info("productInsert호출 성공");
		logger.info("PrdName : " +pvo.getPrd_name());
		logger.info("PrdName : " +pvo.getOption_brand());
//		logger.info("fileName : " +pvo.getFile().getOriginalFilename());//file확인
		//logger.info("b_title : " +bvo.getB_title());//file확인
		
		
		int result=0;
		String url="";
		
//		String b_file=FileUploadUtil.fileUpload(bvo.getFile(),request);
//		bvo.setB_file(b_file);
		
		result=productService.productInsert(pvo);
		if(result==1){
			url="/product/prdRgtList.do";//board
		}
		return "redirect:"+url;//movepage의 기능을 한다.  공백이 들어가면 안된다.
	}
	
	
}
