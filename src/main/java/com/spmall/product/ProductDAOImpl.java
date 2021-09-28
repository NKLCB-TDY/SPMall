package com.spmall.product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spmall.admin.PduImageVO;
import com.spmall.common.Criteria;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	SqlSession sqlSession;
	
	String namespace = "product";
	

	//������ ������ sql���� �°� ���
	@Override
	public Map<String, Object> productList(Criteria cri) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		list = sqlSession.selectList(namespace + ".productList", cri);
		map.put("productList", list);
		
		List<PduImageVO> imageList = new ArrayList<PduImageVO>();
		imageList = sqlSession.selectList(namespace + ".pduimageList");
		map.put("imageList", imageList);
		
		
		return map;
	}

	@Override
	public int countingPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public Map<String, Object> productDetail(int pdu_detail_code) {

		
		Map<String, Object> map = new HashMap<String, Object>();
		
		//��ǰ���� 
		ProductVO vo = new ProductVO(); 
		vo = sqlSession.selectOne(namespace + ".productDetailInfo", pdu_detail_code);
		map.put("productDetail", vo);
		
		//��ǰ �̹��� ����
		List<PduImageVO> imageList = new ArrayList<PduImageVO>();
		imageList = sqlSession.selectList(namespace + ".detailImageList", pdu_detail_code);
		map.put("imageList", imageList);
		return map;
	}

}
