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
}
