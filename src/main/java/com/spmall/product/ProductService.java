package com.spmall.product;

import java.util.List;
import java.util.Map;

import com.spmall.common.Criteria;

public interface ProductService {	
	//��ǰ ����Ʈ ���
	List<ProductVO> productList (Criteria cri)throws Exception;
	Map<String, Object> productDetail(int pdu_detail_code);
}
