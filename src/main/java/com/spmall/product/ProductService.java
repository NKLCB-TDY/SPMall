package com.spmall.product;

import java.util.List;
import java.util.Map;

import com.spmall.common.Criteria;

public interface ProductService {	
	//상품 리스트 출력
	List<ProductVO> productList (Criteria cri)throws Exception;
	Map<String, Object> productDetail(int pdu_detail_code);
}
