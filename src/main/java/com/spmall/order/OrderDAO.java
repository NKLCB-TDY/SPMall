package com.spmall.order;

import java.util.List;
import java.util.Map;

public interface OrderDAO {
	public Map<String, Object> checkOut(String member_id,List<Integer> cart_code)throws Exception;
	public int insertOrder(OrderVO orderVO)throws Exception;
	public int insertDetailOrder(List<Integer> cart_code, int order_code)throws Exception;
	public Map<String, Object> orderList(String member_id)throws Exception;
}
