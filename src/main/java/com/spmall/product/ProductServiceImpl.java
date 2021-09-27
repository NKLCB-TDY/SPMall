package com.spmall.product;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spmall.common.Criteria;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDAO;
	
	@Override
	public List<ProductVO> productList(Criteria cri)throws Exception {
		return productDAO.productList(cri);
	}

	@Override
	public Map<String, Object> productDetail(int pdu_detail_code) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
