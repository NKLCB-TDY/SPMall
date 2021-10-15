package com.spmall.order;

import java.util.List;
import java.util.Map;

public interface OrderDAO {
	public Map<String, Object> checkOut(String member_id,List<Integer> cart_code)throws Exception;
}
