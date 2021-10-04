package com.spmall.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAOImpl implements CartDAO{
	
	@Inject
	SqlSession sqlSession;
	
	String namespace = "cart";
	
	@Override
	public void addToCart(CartVO cartVO)throws Exception{
		sqlSession.insert(namespace+".addToCart", cartVO);
	}

	@Override
	public List<CartVO> selectCartList(String member_id) throws Exception {
		return sqlSession.selectList(namespace+".selectCartList", member_id);
	}
}
