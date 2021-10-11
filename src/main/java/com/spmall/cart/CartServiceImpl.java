package com.spmall.cart;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

	@Inject
	CartDAO cartDAO;
	
	
	@Override
	public void addToCart(CartVO cartVO) throws Exception {
		cartDAO.addToCart(cartVO);
	}


	@Override
	public List<CartVO> selectCartList(String cart_member_id) throws Exception {
		
		return cartDAO.selectCartList(cart_member_id);
	}

	@Override
	public List<CartVO> selectCartList(List<Integer> cart_code) throws Exception {
		return cartDAO.selectCartList(cart_code);
	}
	
	@Override
	public int countingCart(String member_id)throws Exception {
		return cartDAO.countingCart(member_id);
	}


	@Override
	public void removeCart(Map<String, Object> map) throws Exception {
		cartDAO.removeCart(map);
	}


	@Override
	public int checkOverlap(CartVO cartVO) throws Exception {
		return cartDAO.checkOverlap(cartVO);
	}


	@Override
	public void updateToCart(CartVO cartVO) throws Exception {
		cartDAO.updateToCart(cartVO);
	}


	@Override
	public void updateQuantity(CartVO cartvo) throws Exception {
		cartDAO.updateQuantity(cartvo);
	}


	@Override
	public void updateCheck(CartVO cartvo) throws Exception {

		cartDAO.updateCheck(cartvo);
	}



	
	

}
