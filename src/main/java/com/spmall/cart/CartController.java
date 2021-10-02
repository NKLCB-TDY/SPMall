package com.spmall.cart;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spmall.member.MemberController;

@Controller
@RequestMapping("/cart/*") //장바구니
public class CartController {
	
	@Inject
	CartService cartService;
	
	//cartView 페이지 이동
	@RequestMapping(value = "cartView.do", method = RequestMethod.GET)
	public String adminMain() {
		return "member/cart/cartView";
	}
	
	//장바구니에 상품 추가
	@RequestMapping(value= "addToCart.do", method = RequestMethod.POST)
	public void addToCart(CartVO cartVO) throws Exception {
		cartService.addToCart(cartVO);
	}
}
