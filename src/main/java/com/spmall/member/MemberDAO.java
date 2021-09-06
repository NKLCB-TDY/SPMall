package com.spmall.member;

public interface MemberDAO {
	public void memberSignup(MemberVO vo); 			//회원가입
	public MemberVO memberInfo(String member_id); 	//회원정보 확인
	public void memberUpdate(MemberVO vo); 	  		//회원정보업데이트
	public int idoverlap(String member_id);			//회원 중복체크
	public MemberVO commonLogin(MemberVO vo); 		//통합 로그인 
	
}
