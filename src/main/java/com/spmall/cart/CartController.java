package com.spmall.cart;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spmall.common.CustomerUser;
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
	@ResponseBody
	@RequestMapping(value= "addToCart.do", method = RequestMethod.POST)
	public String addToCart(Authentication authentication, CartVO cartVO) throws Exception {

		//memberId insert
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		cartVO.setCart_member_id(user.getUsername());
		
		cartService.addToCart(cartVO);
		
		return "OK";
	}
	
}
