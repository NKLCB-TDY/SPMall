package com.spmall.member;

public interface MemberDAO {
	public void memberSignup(MemberVO vo);
	public int idoverlap(String member_id);
	public MemberVO memberLogin(String member_id);
}
