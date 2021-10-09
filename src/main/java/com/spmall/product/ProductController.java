package com.spmall.product;



import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
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

	
	
	//상품 리스트 출력
	@RequestMapping(value="productList.do", method = RequestMethod.GET)
	public ModelAndView ProductList(@ModelAttribute("cri")SearchCriteria cri, 
									ModelAndView mv, 
									ProductVO productVO,
									Authentication authentication) throws Exception {
		
		
		if(authentication == null) {
			mv.setViewName("product/productList");
		}else {
			mv.setViewName("member/product/productList");
		}
		
		//페이징처리
		PagingSetting pagingSetting = new PagingSetting();
		pagingSetting.setCri(cri);
		
		//출력할 총 데이터 개수
		pagingSetting.setTotalCount(pduService.countingPaging(cri));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = pduService.productList(cri);
		
		mv.addObject("productList", map.get("productList"));
		mv.addObject("imageList", map.get("imageList"));
		mv.addObject("pagingSetting", pagingSetting);
		
		return mv;
	}
	
	//상품 상세조회
	@RequestMapping(value="productDetail.do", method = RequestMethod.GET)
	public ModelAndView detailProductList(@RequestParam("pdu_detail_code") int pdu_detail_code,
									@ModelAttribute("cri") Criteria cri,
									ModelAndView mv,
									Authentication authentication)throws Exception {	
		
		if(authentication == null) {
			mv.setViewName("product/productDetail");
		}else {
			mv.setViewName("member/product/productDetail");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = pduService.productDetail(pdu_detail_code);
		
		mv.addObject("productVO", map.get("productDetail"));
		mv.addObject("imageList", map.get("imageList"));
		mv.addObject("SizeColor", map.get("pduSizeColor"));

		return mv;
	}
	
	
	//Size 값에 따른 색찾기
	@ResponseBody
	@RequestMapping(value ="/selectColor.do", method=RequestMethod.POST)	
	public Object selectColor(ProductVO productVO)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map = pduService.selectColor(productVO);
		return map.get("colorList");
  }
}
