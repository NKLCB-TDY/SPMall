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
	public int newPrsInsert(PduCategoryDetailVO vo) throws Exception {
		sqlSession.insert("admin.newPrsInsert", vo);
		return vo.getPdu_detail_code();
	}
	

	@Override
	public void newPrsInsert_img(List<PduImageVO> imageFileList) throws Exception {
		for(PduImageVO pduImageVO : imageFileList) {
			 sqlSession.insert("admin.newPrsInsert_img",pduImageVO);
		}
	}
}
