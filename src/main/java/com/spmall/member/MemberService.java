package com.spmall.member;

public interface MemberService {
	public void signUpMember(MemberVO vo); //회원가입
	public void logoutMember();			   //회원로그아웃
	public void updateMember(MemberVO vo); //회원정보업뎃
	
	
}
