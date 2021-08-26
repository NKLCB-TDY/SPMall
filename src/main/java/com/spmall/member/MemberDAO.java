package com.spmall.member;

public interface MemberDAO {
	public void signupMember(MemberVO vo);
	public int idoverlap(String member_id);
}
