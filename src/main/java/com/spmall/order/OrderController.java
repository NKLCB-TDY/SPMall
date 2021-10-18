package com.spmall.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
										ModelAndView mv,	Authentication authentication) throws Exception {
		
		
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		String member_id = user.getUsername();
		Map<String, Object> map = new HashMap<String, Object>();
		map = orderService.checkOut(member_id, cart_code);
		
		
		mv.addObject("memberVO",map.get("memberVO"));
		mv.addObject("cartList",map.get("cartList"));
		mv.addObject("cartCode", cart_code);
		mv.setViewName("member/order/checkout");
		
		return mv;
	}
	
	@RequestMapping(value = "checkout.do", method = RequestMethod.POST)
	public ModelAndView checkout_POST(OrderVO orderVO,
			ModelAndView mv,
			Authentication authentication) throws Exception {
		return mv;
	}
}
