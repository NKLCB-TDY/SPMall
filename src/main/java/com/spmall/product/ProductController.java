package com.spmall.product;



import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.Criteria;
import com.spmall.common.PagingSetting;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Inject
	ProductService pduService;
	
	//��ǰ ����Ʈ ���
	@RequestMapping(value="productList.do", method = RequestMethod.GET)
	public ModelAndView ProductList(Criteria cri, ModelAndView mv, ProductVO productVO) throws Exception {
		mv.addObject("list", pduService.productList(cri));
		PagingSetting pagingSetting = new PagingSetting();
		pagingSetting.setCri(cri);
		pagingSetting.setTotalCount(131);
		mv.addObject("pagingSetting", pagingSetting);
		mv.setViewName("product/productList");
		return mv;
	}
	
	//��ǰ ����ȸ
	@RequestMapping(value="productDetailList.do", method = RequestMethod.GET)
	public String detailProductList() {
		return "product/productDetailList";
	}
}
