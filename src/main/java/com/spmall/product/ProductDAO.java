package com.spmall.product;

import java.util.List;

import com.spmall.common.Criteria;

public interface ProductDAO {
	public List<ProductVO> listAll()throws Exception;
	public List<ProductVO> productList(Criteria cri)throws Exception;
}
