package com.spmall.product;

import java.util.Map;

import com.spmall.common.SearchCriteria;

public interface ProductDAO {
	public Map<String, Object> productList(SearchCriteria cri)throws Exception;
	public int countingPaging(SearchCriteria cri)throws Exception;
	public Map<String, Object> productDetail(int pdu_detail_code);
	public Map<String, Object> selectColor(ProductVO productVO);
}
