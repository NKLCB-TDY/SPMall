package com.spmall.cart;

import java.util.List;
import java.util.Map;

public interface CartService {
	public void addToCart(CartVO cartVO)throws Exception;
	public void updateToCart(CartVO cartVO)throws Exception;
	public int checkOverlap(CartVO cartVO)throws Exception;
	public List<CartVO> selectCartList(String cart_member_id)throws Exception;
	public int countingCart(String member_id)throws Exception;
	public void removeCart(Map<String, Object> map)throws Exception;
	public void updateQuantity(CartVO cartvo)throws Exception;
	public void updateCheck(CartVO cartvo)throws Exception;
	
}
