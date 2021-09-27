package com.spmall.www;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spmall.common.Criteria;
import com.spmall.product.ProductDAO;
import com.spmall.product.ProductVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/*Context.xml"})
public class ProductDAOTest {
	@Inject
	ProductDAO dao;
	
	@Test
	public void testPage()throws Exception{
		
		
		Criteria cri = new Criteria();
		cri.setPage(0);
		cri.setPerPageNum(20);
		
		List<ProductVO> list = dao.productList(cri);
		
	}
	
}
