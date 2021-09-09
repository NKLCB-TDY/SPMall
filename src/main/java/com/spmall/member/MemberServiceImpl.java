package com.spmall.member;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDAO;
	
	BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
	
	@Override
	public void memberJoin(MemberVO vo) {
		vo.setMember_pwd(scpwd.encode(vo.getMember_pwd()));
		memberDAO.memberJoin(vo);
	}

	//id �ߺ� üũ 
	@Override
	public int idoverlap(String member_id) {
		int result = memberDAO.idoverlap(member_id);
		return result;
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
	
	//���� �α��� ����
	@Override
	public MemberVO commonLogin(MemberVO vo) {
		MemberVO user = memberDAO.commonLogin(vo);
		String rawPw = vo.getMember_pwd();
		//rawPW : ��ȣȭ �������� ��й�ȣ
		//rawPw�� DB�� ��ȣȭ �Ǿ� ����Ǿ��ִ� ��й�ȣ ��
		if(scpwd.matches(rawPw, user.getMember_pwd())) {
			return user;
		}else {
			return null;
		}
	}

}
