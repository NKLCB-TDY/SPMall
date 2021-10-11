package com.spmall.cart;

public class CartVO {
	private int cart_code;
	private int cart_pdu_detail_code_ref;
	private String cart_member_id;
	private String cart_pdu_size;
	private String cart_pdu_color;
	private int cart_pdu_quantity;
	private String check_YN;
	private String pdu_image_file_name;
	private String pdu_name;
	private String pdu_discounted_price;
	
	
	
	public int getCart_code() {
		return cart_code;
	}
	public void setCart_code(int cart_code) {
		this.cart_code = cart_code;
	}
	public int getCart_pdu_detail_code_ref() {
		return cart_pdu_detail_code_ref;
	}
	public void setCart_pdu_detail_code_ref(int cart_pdu_detail_code_ref) {
		this.cart_pdu_detail_code_ref = cart_pdu_detail_code_ref;
	}
	
	
	public String getCart_member_id() {
		return cart_member_id;
	}
	public void setCart_member_id(String cart_member_id) {
		this.cart_member_id = cart_member_id;
	}
	public String getCart_pdu_size() {
		return cart_pdu_size;
	}
	public void setCart_pdu_size(String cart_pdu_size) {
		this.cart_pdu_size = cart_pdu_size;
	}
	public String getCart_pdu_color() {
		return cart_pdu_color;
	}
	public void setCart_pdu_color(String cart_pdu_color) {
		this.cart_pdu_color = cart_pdu_color;
	}
	public int getCart_pdu_quantity() {
		return cart_pdu_quantity;
	}
	public void setCart_pdu_quantity(int cart_pdu_quantity) {
		this.cart_pdu_quantity = cart_pdu_quantity;
	}
	public String getPdu_image_file_name() {
		return pdu_image_file_name;
	}
	public void setPdu_image_file_name(String pdu_image_file_name) {
		this.pdu_image_file_name = pdu_image_file_name;
	}
	public String getPdu_name() {
		return pdu_name;
	}
	public void setPdu_name(String pdu_name) {
		this.pdu_name = pdu_name;
	}
	public String getPdu_discounted_price() {
		return pdu_discounted_price;
	}
	public void setPdu_discounted_price(String pdu_discounted_price) {
		this.pdu_discounted_price = pdu_discounted_price;
	}
	public String getCheck_YN() {
		return check_YN;
	}
	public void setCheck_YN(String check_YN) {
		this.check_YN = check_YN;
	}
	
		
}
