package com.spmall.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public int checkOverlap(CartVO cartVO) throws Exception {
		return sqlSession.selectOne(namespace+".checkOverlap", cartVO);
	}
	
	@Override
	public List<CartVO> selectCartList(String cart_member_id) throws Exception {
		
		
		return sqlSession.selectList(namespace+".selectCartList", cart_member_id);
	}

	@Override
	public List<CartVO> selectCartList(List<Integer> cartCodeList) throws Exception {
	

		return sqlSession.selectList(namespace+".selectCartList", cartCodeList);
	}
	
	@Override
	public int countingCart(String member_id)throws Exception {
		return sqlSession.selectOne(namespace+".countingCart", member_id);
	}

	@Override
	public void removeCart(Map<String, Object> map) throws Exception {	
		sqlSession.delete(namespace+".removeCart" ,map);
		
	}

	@Override
	public void updateToCart(CartVO cartVO) throws Exception {
		sqlSession.update(namespace+".updateToCart", cartVO);
	}

	@Override
	public void updateQuantity(CartVO cartvo) throws Exception {
		sqlSession.update(namespace+".updateQuantity", cartvo);
	}



	
}
