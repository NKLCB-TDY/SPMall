package com.spmall.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDAO;
	
	@Override
	public void signupMember(MemberVO vo) {
		memberDAO.signupMember(vo);
	}

	//id 중복 체크 
	@Override
	public int idoverlap(String member_id) {
		int result = memberDAO.idoverlap(member_id);
		return result;
	}

	/*
	 * @Override public void updateMember(MemberVO vo) { // TODO Auto-generated
	 * method stub }
	
	 */

}
