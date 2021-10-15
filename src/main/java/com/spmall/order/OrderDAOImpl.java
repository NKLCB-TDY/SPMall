package com.spmall.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
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
		
		for(Integer cartCode : cart_code) {
			System.out.println(cartCode);
		}
		
		return map;
	}
}
