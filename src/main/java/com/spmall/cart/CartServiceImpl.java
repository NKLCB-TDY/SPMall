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
	public List<CartVO> selectCartList(String member_id) throws Exception {
		
		return cartDAO.selectCartList(member_id);
	}


	@Override
	public int countingCart(String member_id)throws Exception {
		return cartDAO.countingCart(member_id);
	}


	@Override
	public void removeCart(Map<String, Object> map) throws Exception {
		cartDAO.removeCart(map);
	}

}
