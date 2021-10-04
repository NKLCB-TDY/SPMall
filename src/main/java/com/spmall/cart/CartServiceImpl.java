package com.spmall.cart;

import java.util.List;

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
	public List<CartVO> selectCartList(String member_id) throws Exception {
		
		return cartDAO.selectCartList(member_id);
	}

}
