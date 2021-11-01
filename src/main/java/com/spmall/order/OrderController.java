package com.spmall.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.cart.CartService;
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
		mv.addObject("orderCode",map.get("orderCode")); //아임포트에 주문번호를 넣기위해 가져옴 
		mv.setViewName("member/order/checkout");
		
		return mv;
	}
	
	@RequestMapping(value = "checkout.do", method = RequestMethod.POST)
	public ModelAndView checkout_POST(@RequestParam("cart_code") List<Integer> cart_code, OrderVO orderVO, 
			ModelAndView mv,
			Authentication authentication) throws Exception {
		
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		String member_id = user.getUsername();
		orderVO.setOrder_member_id(member_id);
		
		//cart테이블에 저장되있는 정보 order로 이동
		int order_code = orderService.insertOrder(orderVO);
		orderService.insertDetailOrder(cart_code, order_code);
		
		
		
		return mv;
	}
	
	
	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public ModelAndView orderList(ModelAndView mv, Authentication authentication) throws Exception {
		
		
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		String member_id = user.getUsername();
		Map<String, Object> map = new HashMap<String, Object>();
		map = orderService.orderList(member_id);
		
		mv.addObject("orderList",map.get("orderList"));
		mv.addObject("orderDetailList",map.get("orderDetailList"));
		mv.setViewName("member/order/list");
		
		return mv;
	}
}
