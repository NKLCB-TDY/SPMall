package com.spmall.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spmall.cart.CartService;
import com.spmall.cart.CartVO;
import com.spmall.member.MemberVO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Inject
	CartService cartService;
	
	@Override
	public Map<String, Object> checkOut(String member_id, List<Integer> cart_code) throws Exception {
	
		Map<String, Object> map = new HashMap<String, Object>();
		//회원정보
		MemberVO memberVO = new MemberVO();
		memberVO = sqlSession.selectOne("member.memberInfo", member_id);
		map.put("memberVO", memberVO);

		//선택된 상품 정보 및 금액
		List<CartVO> list = new ArrayList<CartVO>();
		list = sqlSession.selectList("order.checkout", cart_code);
		map.put("cartList", list);
		
		int orderCode = sqlSession.selectOne("order.orderCode");
		map.put("orderCode", orderCode);
		return map;
	}

	@Override
	public int insertOrder(OrderVO orderVO) throws Exception {
		sqlSession.insert("order.insertOrder", orderVO);
		int orderCode = orderVO.getOrder_code();
		return orderCode;
	}

	@Override
	public int insertDetailOrder(List<Integer> cart_code, int order_code) throws Exception {
		
		
		
		List<CartVO> cartList = new ArrayList<CartVO>();
		cartList = sqlSession.selectList("order.checkout", cart_code);
		OrderDetailVO OrderDetailVO = new OrderDetailVO();
		
		//장바구니에 있는 정보 주문테이블로 옮긴뒤 삭제
		for(CartVO vo : cartList) {
			OrderDetailVO.setOrder_code_ref(order_code);
			OrderDetailVO.setOrder_pdu_name(vo.getPdu_name());
			OrderDetailVO.setOrder_pdu_color(vo.getCart_pdu_color());
			OrderDetailVO.setOrder_pdu_detail_code_ref(vo.getCart_pdu_detail_code_ref());
			OrderDetailVO.setOrder_pdu_quantity(vo.getCart_pdu_quantity());
			OrderDetailVO.setOrder_pdu_size(vo.getCart_pdu_size());
			OrderDetailVO.setOrder_pdu_price(vo.getPdu_discounted_price());
			sqlSession.insert("order.insertDetailOrder", OrderDetailVO);
			sqlSession.delete("order.deleteCart", vo);	
		}

		
		return 0;
	}

	//회원 주문 리스트확인 
	@Override
	public Map<String, Object> orderList(String member_id) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		//로그인한 회원이 주문한 목록 가져옴
		List<OrderVO> orderList = new ArrayList<OrderVO>();
		orderList = sqlSession.selectList("order.orderList", member_id);
		map.put("orderList", orderList);
		
		//가져온 주문 목록에 담긴 주문 코드로 상세 주문목록에 정보도 가져옴
		List<OrderDetailVO> orderDetailList = new ArrayList<OrderDetailVO>();
		OrderDetailVO orderDetailVO = new OrderDetailVO();
		for(OrderVO vo : orderList) {
			int order_code = vo.getOrder_code();
			orderDetailList.addAll(sqlSession.selectList("order.orderDetailList", order_code)) ;
		}
		
		map.put("orderDetailList", orderDetailList);
		return map;
	}
}
