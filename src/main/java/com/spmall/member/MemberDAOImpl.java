package com.spmall.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void signupMember(MemberVO vo) {
		sqlSession.insert("member.signupMember", vo);
	}


	//id 중복 체크 
	@Override
	public int idoverlap(String member_id) {
		return sqlSession.selectOne("member.idoverlap", member_id);
	}

}
