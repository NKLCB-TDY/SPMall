package com.spmall.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void memberSignup(MemberVO vo) {
		sqlSession.insert("member.memberSignup", vo);
	}


	//id �ߺ� üũ 
	@Override
	public int idoverlap(String member_id) {
		return sqlSession.selectOne("member.idoverlap", member_id);
	}

	

	@Override
	public MemberVO memberInfo(String member_id) {
		return sqlSession.selectOne("member.memberInfo", member_id);
	}


	@Override
	public void memberUpdate(MemberVO vo) {
		sqlSession.update("member.memberUpdate", vo);
	}
	
	//���� �α���
		@Override
		public MemberVO commonLogin(MemberVO vo) {
			return sqlSession.selectOne("member.commonLogin", vo);
		}

}
