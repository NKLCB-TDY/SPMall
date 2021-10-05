package com.spmall.cart;

import java.util.List;
import java.util.Map;

public interface CartDAO {
	public void addToCart(CartVO cartVO)throws Exception;
	public List<CartVO> selectCartList(String member_id)throws Exception;
	public int countingCart(String member_id) throws Exception;
	public void removeCart(Map<String, Object> map)throws Exception;
}
