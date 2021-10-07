package com.spmall.order;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.CustomerUser;

@Controller
@RequestMapping("/order/*") //��ٱ���

public class OrderController {
	//cartView ������ �̵�
	@RequestMapping(value = "checkout.do", method = RequestMethod.GET)
	public ModelAndView checkout(Authentication authentication, ModelAndView mv) throws Exception {
		
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		String member_id = user.getUsername();
		mv.setViewName("member/order/checkout");
		return mv;
	}
}
