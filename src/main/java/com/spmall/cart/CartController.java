package com.spmall.cart;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spmall.member.MemberController;

@Controller
@RequestMapping("/cart/*") //��ٱ���
public class CartController {
	
	@Inject
	CartService cartService;
	
	//cartView ������ �̵�
	@RequestMapping(value = "cartView.do", method = RequestMethod.GET)
	public String adminMain() {
		return "member/cart/cartView";
	}
	
	//��ٱ��Ͽ� ��ǰ �߰�
	@RequestMapping(value= "addToCart.do", method = RequestMethod.POST)
	public void addToCart(CartVO cartVO) throws Exception {
		cartService.addToCart(cartVO);
	}
}
