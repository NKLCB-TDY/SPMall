package com.spmall.member;

import java.util.Date;

public class MemberVO {
	private String member_id;		//아이디
	private String member_pwd;		//비밀번호
	private String member_name;
	private boolean member_gender;	//전화번호
	private String member_phone;		//성별
	// ex) 1 @ 2
	
	private String member_email1;	//email1 
	private String member_email2;	//email2
	
	private String member_addr1;		//우편번호
	private String member_addr2;		//기본주소
	private String member_addr3;		//동
	private String member_addr4;		//상세주소
	
	private Date memeber_create_at; 		//가입날짜
	private Integer member_point;
	private Date member_lately_date;
	private Integer member_total_login;
	private Integer member_total_buy;
	private Integer member_del_yn;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public boolean isMember_gender() {
		return member_gender;
	}
	public void setMember_gender(boolean member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
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
	public Date getMemeber_create_at() {
		return memeber_create_at;
	}
	public void setMemeber_create_at(Date memeber_create_at) {
		this.memeber_create_at = memeber_create_at;
	}
	public Integer getMember_point() {
		return member_point;
	}
	public void setMember_point(Integer member_point) {
		this.member_point = member_point;
	}
	public Date getMember_lately_date() {
		return member_lately_date;
	}
	public void setMember_lately_date(Date member_lately_date) {
		this.member_lately_date = member_lately_date;
	}
	public Integer getMember_total_login() {
		return member_total_login;
	}
	public void setMember_total_login(Integer member_total_login) {
		this.member_total_login = member_total_login;
	}
	public Integer getMember_total_buy() {
		return member_total_buy;
	}
	public void setMember_total_buy(Integer member_total_buy) {
		this.member_total_buy = member_total_buy;
	}
	public Integer getMember_del_yn() {
		return member_del_yn;
	}
	public void setMember_del_yn(Integer member_del_yn) {
		this.member_del_yn = member_del_yn;
	}
	
	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_pwd=" + member_pwd + ", member_name=" + member_name
				+ ", member_gender=" + member_gender + ", member_phone=" + member_phone + ", member_email1="
				+ member_email1 + ", member_email2=" + member_email2 + ", member_addr1=" + member_addr1
				+ ", member_addr2=" + member_addr2 + ", member_addr3=" + member_addr3 + ", member_addr4=" + member_addr4
				+ ", memeber_create_at=" + memeber_create_at + ", member_point=" + member_point
				+ ", member_lately_date=" + member_lately_date + ", member_total_login=" + member_total_login
				+ ", member_total_buy=" + member_total_buy + ", member_del_yn=" + member_del_yn + ", getMember_id()="
				+ getMember_id() + ", getMember_pwd()=" + getMember_pwd() + ", getMember_name()=" + getMember_name()
				+ ", isMember_gender()=" + isMember_gender() + ", getMember_phone()=" + getMember_phone()
				+ ", getMember_email1()=" + getMember_email1() + ", getMember_email2()=" + getMember_email2()
				+ ", getMember_addr1()=" + getMember_addr1() + ", getMember_addr2()=" + getMember_addr2()
				+ ", getMember_addr3()=" + getMember_addr3() + ", getMember_addr4()=" + getMember_addr4()
				+ ", getMemeber_create_at()=" + getMemeber_create_at() + ", getMember_point()=" + getMember_point()
				+ ", getMember_lately_date()=" + getMember_lately_date() + ", getMember_total_login()="
				+ getMember_total_login() + ", getMember_total_buy()=" + getMember_total_buy() + ", getMember_del_yn()="
				+ getMember_del_yn() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	

	
}
