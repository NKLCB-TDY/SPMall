package com.spmall.order;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Inject
	OrderDAO orderDAO;
	
	@Override
	public Map<String, Object> checkOut(String member_id,List<Integer> cart_code) throws Exception {
		return orderDAO.checkOut(member_id,cart_code);
	}

	@Override
	public int insertOrder(OrderVO orderVO) throws Exception {
		return orderDAO.insertOrder(orderVO);
	}

	@Override
	public int insertDetailOrder(List<Integer> cart_code, int order_code ) throws Exception {
		return orderDAO.insertDetailOrder(cart_code, order_code);
	}

	@Override
	public Map<String, Object> orderList(String member_id) throws Exception {
		return orderDAO.orderList(member_id);
	}
}
