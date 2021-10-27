package com.spmall.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spmall.member.MemberVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Inject
	SqlSession sqlSession;
	

	//카테고리 찾기
	@Override
	public List<AdminVO> searchCate() throws Exception {
		return sqlSession.selectList("admin.searchCate");
	}

	@Override
	public int newPrsInsert(PduCategoryDetailVO vo) throws Exception {
		sqlSession.insert("admin.newPrsInsert", vo);
		
		sqlSession.insert("admin.newPrsInsertColorSizePieces", vo);
		return vo.getPdu_detail_code();
	}
	

	@Override
	public void newPrsInsert_img(List<PduImageVO> imageFileList) throws Exception {
		for(PduImageVO pduImageVO : imageFileList) {
			 sqlSession.insert("admin.newPrsInsert_img",pduImageVO);
		}
	}

	@Override
	public Map<String, Object> outputInfo() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		Integer salesMonth = 0;
		Integer salesToday = 0;
		Integer numberOfOrders = 0;
		
		salesMonth = sqlSession.selectOne("admin.salesMonth");
		salesToday = sqlSession.selectOne("admin.salesToday");
		numberOfOrders = sqlSession.selectOne("admin.numberOfOrders");
		if(salesMonth == null) {
			salesMonth = 0;
		}
		
		if(salesToday == null) {
			salesToday = 0;
		}
		
		if(numberOfOrders == null) {
			numberOfOrders = 0;
		}
		map.put("salesMonth", salesMonth);
		map.put("salesToday", salesToday);
		map.put("numberOfOrders", numberOfOrders);
		return map;
	}

	@Override
	public Map<String, Object> memberManage() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		List<MemberVO> list = new ArrayList<MemberVO>();
		
		list = sqlSession.selectList("admin.memberList");
		map.put("memberList", list);		
		return map;
	}
}
