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

	//id 중복 체크 
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
	
	//통합 로그인 구현
	@Override
	public MemberVO commonLogin(MemberVO vo) {
		MemberVO user = memberDAO.commonLogin(vo);
		String rawPw = vo.getMember_pwd();
		//rawPW : 암호화 되지않은 비밀번호
		//rawPw와 DB에 암호화 되어 저장되어있는 비밀번호 비교
		if(scpwd.matches(rawPw, user.getMember_pwd())) {
			return user;
		}else {
			return null;
		}
	}

}
