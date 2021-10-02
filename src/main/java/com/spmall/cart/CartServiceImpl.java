package com.spmall.cart;

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

}
