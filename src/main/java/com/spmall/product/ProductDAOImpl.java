package com.spmall.product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spmall.admin.PduImageVO;
import com.spmall.common.SearchCriteria;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	SqlSession sqlSession;
	
	String namespace = "product";
	
	
	//페이지 데이터 sql값에 맞게 출력
	@Override
	public Map<String, Object> productList(SearchCriteria cri) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		list = sqlSession.selectList(namespace + ".productList", cri);
		map.put("productList", list);
		
		List<PduImageVO> imageList = new ArrayList<PduImageVO>();
		imageList = sqlSession.selectList(namespace + ".pduImageList");
		map.put("imageList", imageList);
		
		
		return map;
	}

	@Override
	public int countingPaging(SearchCriteria cri) throws Exception {

		return sqlSession.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public Map<String, Object> productDetail(int pdu_detail_code) {

		
		Map<String, Object> map = new HashMap<String, Object>();
		
		//제품정보 
		ProductVO vo = new ProductVO();
		vo.setPdu_detail_code(pdu_detail_code);
		vo = sqlSession.selectOne(namespace + ".productDetailInfo", vo);
		map.put("productDetail", vo);
		
		//제품 이미지 정보
		List<PduImageVO> imageList = new ArrayList<PduImageVO>();
		imageList = sqlSession.selectList(namespace + ".detailImageList", vo);
		map.put("imageList", imageList);
		
		//컬러 및 사이즈
		List<String> colorList = new ArrayList<String>();
		colorList = sqlSession.selectList(namespace + ".pduColorSelect", vo);
		map.put("pduSizeColor", colorList);
		
		return map;
		
	}

	@Override
	public Map<String, Object> selectColor(ProductVO productVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<ProductVO> colorList = new ArrayList<ProductVO>();
		colorList = sqlSession.selectList(namespace + ".selectColor", productVO);
		map.put("colorList", colorList);
		return map;
	}

}
