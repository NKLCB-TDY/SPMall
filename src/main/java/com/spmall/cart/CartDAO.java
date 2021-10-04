package com.spmall.cart;

import java.util.List;

public interface CartDAO {
	public void addToCart(CartVO cartVO)throws Exception;
	public List<CartVO> selectCartList(String member_id)throws Exception;
}
