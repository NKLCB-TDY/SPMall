package com.spmall.cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.CustomerUser;

@Controller
@RequestMapping("/cart/*") //��ٱ���
public class CartController {
	
	@Inject
	CartService cartService;

	//cartView ������ �̵�
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
	

	
	//��ٱ��Ͽ� ��ǰ �߰�
	@ResponseBody
	@RequestMapping(value= "addToCart.do", method = RequestMethod.POST)
	public void addToCart(Authentication authentication, CartVO cartVO) throws Exception {

		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		cartVO.setCart_member_id(user.getUsername());
		cartService.addToCart(cartVO);
		
	}
	
	
	//��ٱ��Ͽ� ��ǰ �߰��� �ߺ��� ��ٱ��Ͽ� �ߺ��� ��ǰ�� �ִ��� Ȯ��
	@ResponseBody
	@RequestMapping(value= "checkOverlap.do", method = RequestMethod.POST)
	public int checkOverlap(Authentication authentication, CartVO cartVO) throws Exception {

		//�α��� ���� ������ 
		if(authentication != null) {

			CustomerUser user = (CustomerUser)authentication.getPrincipal();
			cartVO.setCart_member_id(user.getUsername());
			//�ߺ������� ������ 1��ȯ, ������ 0��ȯ
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
	
	//��ٱ��Ͽ� ǰ�� �߰��� �ߺ��� ��ǰ�� �����Ƿ� ������ update
	@ResponseBody
	@RequestMapping(value= "updateToCart.do", method = RequestMethod.POST)
	public void updateToCart(Authentication authentication, CartVO cartVO) throws Exception {

		
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		cartVO.setCart_member_id(user.getUsername());

		cartService.updateToCart(cartVO);
	}
	

	
	//��ٱ��� �������
	@ResponseBody
	@RequestMapping(value="removeCart.do", method = RequestMethod.POST)
	public void removeCart(@RequestParam("offsetNum") int offsetNum, Authentication authentication)throws Exception {
		CustomerUser user = (CustomerUser)authentication.getPrincipal();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("memberId", user.getUsername());
		map.put("offsetNum", offsetNum);
		cartService.removeCart(map);
		
	}
	
	//����������Ʈ
	@ResponseBody
	@RequestMapping(value="updateQuantity.do", method = RequestMethod.POST)
	public void updateQuantity(CartVO cartvo)throws Exception {

		cartService.updateQuantity(cartvo);
	}
	
	//��ǰ checkUpdate
	@ResponseBody
	@RequestMapping(value= "updateCheck.do", method = RequestMethod.POST)
	public void updateCheck(CartVO cartvo) throws Exception {
		
		cartService.updateCheck(cartvo);
		
	}
}
