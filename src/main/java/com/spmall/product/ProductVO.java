package com.spmall.product;

public class ProductVO {
	private int pdu_detail_code;			//기본키
	private String pdu_category_main; 		//메인 코드
	private String pdu_category_code_ref; 	//상품 상위 코드
	private String pdu_name;			  
	private String pdu_price;
	private String pdu_discount_rate;		//할인율
	private String pdu_discounted_price;	//할인가
	private String pdu_size_name;
	private String pdu_color_name;
	private Integer pdu_pieces; 			//상품 수량
	private String pdu_content;
	private String pdu_classificate;		//상품 분류
	

	
	public int getPdu_detail_code() {
		return pdu_detail_code;
	}
	public void setPdu_detail_code(int pdu_detail_code) {
		this.pdu_detail_code = pdu_detail_code;
	}
	public String getPdu_category_main() {
		return pdu_category_main;
	}
	public void setPdu_category_main(String pdu_category_main) {
		this.pdu_category_main = pdu_category_main;
	}
	public String getPdu_category_code_ref() {
		return pdu_category_code_ref;
	}
	public void setPdu_category_code_ref(String pdu_category_code_ref) {
		this.pdu_category_code_ref = pdu_category_code_ref;
	}
	public String getPdu_name() {
		return pdu_name;
	}
	public void setPdu_name(String pdu_name) {
		this.pdu_name = pdu_name;
	}
	public String getPdu_price() {
		return pdu_price;
	}
	public void setPdu_price(String pdu_price) {
		this.pdu_price = pdu_price;
	}
	public String getPdu_discount_rate() {
		return pdu_discount_rate;
	}
	public void setPdu_discount_rate(String pdu_discount_rate) {
		this.pdu_discount_rate = pdu_discount_rate;
	}
	public String getPdu_discounted_price() {
		return pdu_discounted_price;
	}
	public void setPdu_discounted_price(String pdu_discounted_price) {
		this.pdu_discounted_price = pdu_discounted_price;
	}
	
	public String getPdu_size_name() {
		return pdu_size_name;
	}
	public void setPdu_size_name(String pdu_size_name) {
		this.pdu_size_name = pdu_size_name;
	}
	public String getPdu_color_name() {
		return pdu_color_name;
	}
	public void setPdu_color_name(String pdu_color_name) {
		this.pdu_color_name = pdu_color_name;
	}
	public Integer getPdu_pieces() {
		return pdu_pieces;
	}
	public void setPdu_pieces(Integer pdu_pieces) {
		this.pdu_pieces = pdu_pieces;
	}
	public String getPdu_content() {
		return pdu_content;
	}
	public void setPdu_content(String pdu_content) {
		this.pdu_content = pdu_content;
	}
	public String getPdu_classificate() {
		return pdu_classificate;
	}
	public void setPdu_classificate(String pdu_classificate) {
		this.pdu_classificate = pdu_classificate;
	}

	
	
}
