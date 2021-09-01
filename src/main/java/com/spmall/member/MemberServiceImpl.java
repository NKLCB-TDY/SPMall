package com.spmall.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDAO;
	
	@Override
	public void memberSignup(MemberVO vo) {
		memberDAO.memberSignup(vo);
	}

	//id 중복 체크 
	@Override
	public int idoverlap(String member_id) {
		int result = memberDAO.idoverlap(member_id);
		return result;
	}

	@Override
	public MemberVO memberLogin(String member_id) {
		return memberDAO.memberLogin(member_id);
		
	}

	@Override
	public MemberVO memberInfo(String member_id) {
		return memberDAO.memberInfo(member_id);
	}

	@Override
	public void memberUpdate(MemberVO vo) {
		memberDAO.memberUpdate(vo);
	}

	/*
	 * @Override public void updateMember(MemberVO vo) { // TODO Auto-generated
	 * method stub }
	
	 */

}
