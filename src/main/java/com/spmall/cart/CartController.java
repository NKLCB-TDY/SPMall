package com.spmall.cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.CustomerUser;
import com.spmall.member.MemberController;

@Controller
@RequestMapping("/cart/*") //장바구니
public class CartController {
	
	@Inject
	CartService cartService;
	
	
	
	
	//cartView 페이지 이동
	@RequestMapping(value = "cartView.do", method = RequestMethod.GET)
	public ModelAndView cartView(Authentication authentication, ModelAndView mv) throws Exception {
		
		if(authentication == null) {
			mv.setViewName("redirect:/main/mainLogin.do");
			return mv;
		}
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		String cart_member_id = user.getUsername();
		
		
		List<CartVO> list = new ArrayList<CartVO>();
		list = cartService.selectCartList(cart_member_id);
		
		
		mv.addObject("cartList", list);
		mv.setViewName(user.getRoleStatus()+"/cart/cartView");
		return mv;
	}
	

	
	//장바구니에 상품 추가
	@ResponseBody
	@RequestMapping(value= "addToCart.do", method = RequestMethod.POST)
	public void addToCart(Authentication authentication, CartVO cartVO) throws Exception {

		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		cartVO.setCart_member_id(user.getUsername());
		cartService.addToCart(cartVO);
		
	}
	
	
	//장바구니에 상품 추가전 중복된 장바구니에 중복된 상품이 있는지 확인
	@ResponseBody
	@RequestMapping(value= "checkOverlap.do", method = RequestMethod.POST)
	public int checkOverlap(Authentication authentication, CartVO cartVO) throws Exception {

		//로그인 정보 없을시 
		if(authentication != null) {

			CustomerUser user = (CustomerUser)authentication.getPrincipal();
			cartVO.setCart_member_id(user.getUsername());
			//중복데이터 있을시 1반환, 없으면 0반환
			return cartService.checkOverlap(cartVO);
		}
		return 401;
	}
	
	
	@ResponseBody
	@RequestMapping(value="countingCart.do", method = RequestMethod.POST) 
	public int countingCart(Authentication authentication)throws Exception{
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		
		return cartService.countingCart(user.getUsername());
	}
	
	//장바구니에 품복 추가시 중복된 물품이 있으므로 수량만 update
	@ResponseBody
	@RequestMapping(value= "updateToCart.do", method = RequestMethod.POST)
	public void updateToCart(Authentication authentication, CartVO cartVO) throws Exception {

		
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		cartVO.setCart_member_id(user.getUsername());

		cartService.updateToCart(cartVO);
	}
	

	
	//장바구니 목록제거
	@ResponseBody
	@RequestMapping(value="removeCart.do", method = RequestMethod.POST)
	public void removeCart(@RequestParam("offsetNum") int offsetNum, Authentication authentication)throws Exception {
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("memberId", user.getUsername());
		map.put("offsetNum", offsetNum);
		cartService.removeCart(map);
		
	}
	
	//수량업데이트
	@ResponseBody
	@RequestMapping(value="updateQuantity.do", method = RequestMethod.POST)
	public void updateQuantity(CartVO cartvo)throws Exception {

		cartService.updateQuantity(cartvo);
	}
	
	//상품 checkUpdate
	@ResponseBody
	@RequestMapping(value= "updateCheck.do", method = RequestMethod.POST)
	public void updateCheck(CartVO cartvo) throws Exception {
		cartService.updateCheck(cartvo);
		
	}
}
