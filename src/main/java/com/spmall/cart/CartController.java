package com.spmall.cart;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spmall.member.MemberController;

@Controller
@RequestMapping("/cart/*") //장바구니
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

}
