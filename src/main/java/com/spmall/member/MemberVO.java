package com.spmall.member;

import java.sql.Timestamp;

public class MemberVO {
	private String member_id;		//아이디
	private String member_pwd;		//비밀번호
	private String member_name;		//이름
	private String member_gender;	//성별
	private String member_phone;	//전화번호
	
	// ex) 1 @ 2
	
	private String member_email1;	//email1 
	private String member_email2;	//email2
	
	private String member_addr1;		//우편번호
	private String member_addr2;		//기본주소
	private String member_addr3;		//동
	private String member_addr4;		//상세주소
	
	private Integer member_point;
	private Timestamp member_create_at; 		//가입날짜
	private Timestamp member_lately_date;		//최근접속날짜
	private Integer member_total_login;			//로그인 횟수
	private Integer member_total_buy;			//구매횟수
	private String member_del_yn;				//회원 탈퇴 : N
	
	
	private String Role_Name;		//권한이름
	
	
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
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
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
	public Integer getMember_point() {
		return member_point;
	}
	public void setMember_point(Integer member_point) {
		this.member_point = member_point;
	}
	
	public Timestamp getMember_create_at() {
		return member_create_at;
	}
	public void setMember_create_at(Timestamp member_create_at) {
		this.member_create_at = member_create_at;
	}
	public Timestamp getMember_lately_date() {
		return member_lately_date;
	}
	public void setMember_lately_date(Timestamp member_lately_date) {
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
	public String getMember_del_yn() {
		return member_del_yn;
	}
	public void setMember_del_yn(String member_del_yn) {
		this.member_del_yn = member_del_yn;
	}
	
	
	public String getRole_Name() {
		return Role_Name;
	}
	public void setRole_Name(String role_Name) {
		Role_Name = role_Name;
	}
	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_pwd=" + member_pwd + ", member_name=" + member_name
				+ ", member_gender=" + member_gender + ", member_phone=" + member_phone + ", member_email1="
				+ member_email1 + ", member_email2=" + member_email2 + ", member_addr1=" + member_addr1
				+ ", member_addr2=" + member_addr2 + ", member_addr3=" + member_addr3 + ", member_addr4=" + member_addr4
				+ ", member_point=" + member_point + ", member_create_at=" + member_create_at + ", member_lately_date="
				+ member_lately_date + ", member_total_login=" + member_total_login + ", member_total_buy="
				+ member_total_buy + ", member_del_yn=" + member_del_yn + ", Role_Name=" + Role_Name + "]";
	}

}
