package com.spmall.member;

public interface MemberDAO {
	public void memberSignup(MemberVO vo); 			//ȸ������
	public MemberVO memberInfo(String member_id); 	//ȸ������ Ȯ��
	public void memberUpdate(MemberVO vo); 	  		//ȸ������������Ʈ
	public int idoverlap(String member_id);			//ȸ�� �ߺ�üũ
	public MemberVO commonLogin(MemberVO vo); 		//���� �α��� 
	
}
