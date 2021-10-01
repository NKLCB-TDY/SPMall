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
	public Map<String, Object> productList(Criteria cri)throws Exception {
		return productDAO.productList(cri);
	}

	@Override
	public Map<String, Object> productDetail(int pdu_detail_code) {
		return productDAO.productDetail(pdu_detail_code);
	}
	
	@Override
	public int countingPaging(Criteria cri) throws Exception {
		return productDAO.countingPaging(cri);
	}

	@Override
	public Map<String, Object> selectColor(ProductVO vo) {
		return productDAO.selectColor(vo);
	}
	
}
