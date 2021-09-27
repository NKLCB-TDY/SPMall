package com.spmall.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spmall.common.Criteria;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	SqlSession sqlSession;
	
	String namespace = "product";
	
	@Override
	public List<ProductVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	//������ ������ sql���� �°� ���
	@Override
	public List<ProductVO> productList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".productList", cri);
	}

}
