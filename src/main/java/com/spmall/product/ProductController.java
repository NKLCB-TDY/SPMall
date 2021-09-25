package com.spmall.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@RequestMapping(value="productList.do", method = RequestMethod.GET)
	public String ProductList() {
		
		return "product/productList";
	}
	
	@RequestMapping(value="productDetailList.do", method = RequestMethod.GET)
	public String detailProductList() {
		return "product/productDetailList";
	}
}
