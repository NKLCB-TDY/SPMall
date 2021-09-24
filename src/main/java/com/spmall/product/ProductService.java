package com.spmall.product;

import java.util.List;
import java.util.Map;

public interface ProductService {	
	List<ProductVO> productList(Map<String, Object> map);
	Map<String, Object> productDetail(int pdu_detail_code);
}
