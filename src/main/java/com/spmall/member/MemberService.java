package com.spmall.member;

public interface MemberService {
	public void memberSignup(MemberVO vo); //회원가입
	//public void updateMember(MemberVO vo); //회원정보업뎃
	public int idoverlap(String member_id); //회원 중복체크
	public MemberVO memberLogin(String id);
}
