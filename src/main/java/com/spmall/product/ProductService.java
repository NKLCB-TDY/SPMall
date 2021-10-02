package com.spmall.product;

import java.util.Map;

import com.spmall.common.Criteria;

public interface ProductService {	
	//��ǰ ����Ʈ ���
	public Map<String, Object> productList (Criteria cri)throws Exception;
	public Map<String, Object> productDetail(int pdu_detail_code);
	public Map<String, Object> selectColor(ProductVO productVO);
	public int countingPaging(Criteria cri)throws Exception;
}
