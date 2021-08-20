package com.spmall.member;

import java.util.Date;

public class MemberVO {
	private String member_id;		//아이디
	private String member_pw;		//비밀번호
	private String member_phone;		//전화번호
	private String member_addr1;		//우편번호
	private String member_addr2;		//기본주소
	private String member_addr3;		//동
	private String member_addr4;		//상세주소
	// ex) 1 @ 2
	private String member_email1;	//email1 
	private String member_email2;	//email2
	private boolean member_sex;		//성별
	private Date singup_date; 		//가입날짜
	
	
	
	public String getMember_id() {
		return member_id;
	}



	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}



	public String getMember_pw() {
		return member_pw;
	}



	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}



	public String getMember_phone() {
		return member_phone;
	}



	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}



	public String getMember_addr1() {
		return member_addr1;
	}



	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}



	public String getMember_addr2() {
		return member_addr2;
	}



	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}



	public String getMember_addr3() {
		return member_addr3;
	}



	public void setMember_addr3(String member_addr3) {
		this.member_addr3 = member_addr3;
	}



	public String getMember_addr4() {
		return member_addr4;
	}



	public void setMember_addr4(String member_addr4) {
		this.member_addr4 = member_addr4;
	}



	public String getMember_email1() {
		return member_email1;
	}



	public void setMember_email1(String member_email1) {
		this.member_email1 = member_email1;
	}



	public String getMember_email2() {
		return member_email2;
	}



	public void setMember_email2(String member_email2) {
		this.member_email2 = member_email2;
	}



	public boolean isMember_sex() {
		return member_sex;
	}



	public void setMember_sex(boolean member_sex) {
		this.member_sex = member_sex;
	}



	public Date getSingup_date() {
		return singup_date;
	}



	public void setSingup_date(Date singup_date) {
		this.singup_date = singup_date;
	}



	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_pw=" + member_pw + ", member_phone=" + member_phone
				+ ", member_addr1=" + member_addr1 + ", member_addr2=" + member_addr2 + ", member_addr3=" + member_addr3
				+ ", member_addr4=" + member_addr4 + ", member_email1=" + member_email1 + ", member_email2="
				+ member_email2 + ", member_sex=" + member_sex + ", singup_date=" + singup_date + "]";
	}
	
	
}
