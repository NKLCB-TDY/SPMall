package com.spmall.member;

public interface MemberService {
	public void signupMember(MemberVO vo); //ȸ������
	//public void updateMember(MemberVO vo); //ȸ����������
	public int idoverlap(String member_id); //ȸ�� �ߺ�üũ
	
}
