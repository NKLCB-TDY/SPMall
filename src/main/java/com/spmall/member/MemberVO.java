package com.spmall.member;

import java.util.Date;

public class MemberVO {
	private String memberId;		//아이디
	private String memberPw;		//비밀번호
	private String memberPhone;		//전화번호
	private String memberAddr1;		//우편번호
	private String memberAddr2;		//기본주소
	private String memberAddr3;		//동
	private String memberAddr4;		//상세주소
	// ex) 1 @ 2
	private String memberEmail1;	//email1 
	private String memberEmail2;	//email2
	private boolean memberSex;		//성별
	private Date singupDate; 		//가입날짜
	

	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberAddr1() {
		return memberAddr1;
	}
	public void setMemberAddr1(String memberAddr1) {
		this.memberAddr1 = memberAddr1;
	}
	public String getMemberAddr2() {
		return memberAddr2;
	}
	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}
	public String getMemberAddr3() {
		return memberAddr3;
	}
	public void setMemberAddr3(String memberAddr3) {
		this.memberAddr3 = memberAddr3;
	}
	public String getMemberAddr4() {
		return memberAddr4;
	}
	public void setMemberAddr4(String memberAddr4) {
		this.memberAddr4 = memberAddr4;
	}
	public String getMemberEmail1() {
		return memberEmail1;
	}
	public void setMemberEmail1(String memberEmail1) {
		this.memberEmail1 = memberEmail1;
	}
	public String getMemberEmail2() {
		return memberEmail2;
	}
	public void setMemberEmail2(String memberEmail2) {
		this.memberEmail2 = memberEmail2;
	}
	public boolean isMemberSex() {
		return memberSex;
	}
	public void setMemberSex(boolean memberSex) {
		this.memberSex = memberSex;
	}
	public Date getSingupDate() {
		return singupDate;
	}
	public void setSingupDate(Date singupDate) {
		this.singupDate = singupDate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberPhone=" + memberPhone
				+ ", memberAddr1=" + memberAddr1 + ", memberAddr2=" + memberAddr2 + ", memberAddr3=" + memberAddr3
				+ ", memberAddr4=" + memberAddr4 + ", memberEmail1=" + memberEmail1 + ", memberEmail2=" + memberEmail2
				+ ", memberSex=" + memberSex + ", singupDate=" + singupDate + "]";
	}
	
}
