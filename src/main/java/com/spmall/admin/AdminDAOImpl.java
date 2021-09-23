package com.spmall.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Inject
	SqlSession sqlSession;
	

	//ī�װ� ã��
	@Override
	public List<AdminVO> searchCate() throws Exception {
		return sqlSession.selectList("admin.searchCate");
	}

	@Override
	public int newPrsInsert(PduCategoryDetailVO vo) throws Exception {
		return sqlSession.insert("admin.newPrsInsert", vo);
	}
	

	@Override
	public void newPrsInsert_img(List<PduImageVO> imageFileList) throws Exception {
		for(PduImageVO pduImageVO : imageFileList) {
			sqlSession.insert("admin.newPrsInsert_img",pduImageVO);
		}
	}
}
