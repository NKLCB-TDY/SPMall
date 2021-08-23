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

	/*
	 * @Override public void updateMember(MemberVO vo) { // TODO Auto-generated
	 * method stub }
	 * 
	 * @Override public String idcheck(String member_id) { // TODO Auto-generated
	 * method stub return null; }
	 */

}
