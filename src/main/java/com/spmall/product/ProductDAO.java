package com.spmall.product;

import java.util.List;
import java.util.Map;

import com.spmall.common.Criteria;

public interface ProductDAO {
	public Map<String, Object> productList(Criteria cri)throws Exception;
	public int countingPaging(Criteria cri)throws Exception;
	public Map<String, Object> productDetail(int pdu_detail_code);
	public Map<String, Object> selectColor(ProductVO vo);
}
