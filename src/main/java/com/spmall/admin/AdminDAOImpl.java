package com.spmall.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
	public void newPrsInsert(PduCategoryDetailVO vo) throws Exception {
		sqlSession.insert("admin.newPrsInsert", vo);
	}
	



	
}
