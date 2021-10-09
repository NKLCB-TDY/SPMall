package com.spmall.cart;

import java.util.List;
import java.util.Map;

public interface CartDAO {
	public void addToCart(CartVO cartVO)throws Exception;
	public void updateToCart(CartVO cartVO)throws Exception;
	public int checkOverlap(CartVO cartVO)throws Exception;
	public List<CartVO> selectCartList(String cart_member_id)throws Exception;
	public List<CartVO> selectCartList(List<Integer> cart_code)throws Exception;
	
	public int countingCart(String member_id) throws Exception;
	public void removeCart(Map<String, Object> map)throws Exception;
	public void updateQuantity(CartVO cartvo)throws Exception;
}
