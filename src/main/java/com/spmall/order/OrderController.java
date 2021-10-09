package com.spmall.order;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spmall.cart.CartService;
import com.spmall.cart.CartVO;
import com.spmall.common.CustomerUser;

@Controller
@RequestMapping("/order/*") //장바구니

public class OrderController {
	
	@Inject
	OrderService orderService;
	
	@Inject
	CartService cartService;
	

	
	
	@RequestMapping(value = "checkout.do", method = RequestMethod.GET)
	public ModelAndView checkout_GET(@RequestParam("cart_code") List<Integer> cart_code, 
			ModelAndView mv) throws Exception {
		
		List<CartVO> list = new ArrayList<CartVO>();
		list = cartService.selectCartList(cart_code);
		
		mv.addObject("cartCodeList", list);
		mv.setViewName("member/order/checkout");
		
		return mv;
	}
}
