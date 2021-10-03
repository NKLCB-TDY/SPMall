package com.spmall.product;



import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spmall.common.Criteria;
import com.spmall.common.PagingSetting;
import com.spmall.common.SearchCriteria;



@Controller
@RequestMapping("/product/*")

public class ProductController {
	
	@Inject
	ProductService pduService;

	
	
	//��ǰ ����Ʈ ���
	@RequestMapping(value="productList.do", method = RequestMethod.GET)
	public ModelAndView ProductList(@ModelAttribute("cri")SearchCriteria cri, 
									ModelAndView mv, 
									ProductVO productVO) throws Exception {
		
		
		//����¡ó��
		PagingSetting pagingSetting = new PagingSetting();
		pagingSetting.setCri(cri);
		
		//����� �� ������ ����

		pagingSetting.setTotalCount(pduService.countingPaging(cri));
		System.out.println(cri.getKeyword());
		Map<String, Object> map = new HashMap<String, Object>();
		map = pduService.productList(cri);
		
		mv.addObject("productList", map.get("productList"));
		mv.addObject("imageList", map.get("imageList"));
		mv.addObject("pagingSetting", pagingSetting);
		mv.setViewName("product/productList");
		return mv;
	}
	
	//��ǰ ����ȸ
	@RequestMapping(value="productDetail.do", method = RequestMethod.GET)
	public ModelAndView detailProductList(@RequestParam("pdu_detail_code") int pdu_detail_code,
									@ModelAttribute("cri") Criteria cri,
									ModelAndView mv)throws Exception {	
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = pduService.productDetail(pdu_detail_code);
		
		mv.addObject("productVO", map.get("productDetail"));
		mv.addObject("imageList", map.get("imageList"));
		mv.addObject("SizeColor", map.get("pduSizeColor"));
		mv.setViewName("product/productDetail");
		return mv;
	}
	
	
	//Size ���� ���� ��ã��
	@ResponseBody
	@RequestMapping(value ="/selectColor", method=RequestMethod.POST)	
	public Object selectColor(ProductVO productVO)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map = pduService.selectColor(productVO);
		return map.get("colorList");
  }
}
