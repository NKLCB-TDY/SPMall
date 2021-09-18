package com.spmall.admin;

public class PduCategoryDetailVO {
	private String pdu_detail_code;
	private String pdu_category_code_ref;
	private String pdu_name;
	private String pdu_price;
	private String pdu_sale_price;
	private String pdu_content;
	private String pdu_size;
	private String pdu_color;
	private Integer pdu_pieces;
	private String gooods_new_YN;
	
	
	public String getPdu_detail_code() {
		return pdu_detail_code;
	}


	public void setPdu_detail_code(String pdu_detail_code) {
		this.pdu_detail_code = pdu_detail_code;
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


	public String getPdu_sale_price() {
		return pdu_sale_price;
	}


	public void setPdu_sale_price(String pdu_sale_price) {
		this.pdu_sale_price = pdu_sale_price;
	}


	public String getPdu_content() {
		return pdu_content;
	}


	public void setPdu_content(String pdu_content) {
		this.pdu_content = pdu_content;
	}


	public String getPdu_size() {
		return pdu_size;
	}


	public void setPdu_size(String pdu_size) {
		this.pdu_size = pdu_size;
	}


	public String getPdu_color() {
		return pdu_color;
	}


	public void setPdu_color(String pdu_color) {
		this.pdu_color = pdu_color;
	}


	public Integer getPdu_pieces() {
		return pdu_pieces;
	}


	public void setPdu_pieces(Integer pdu_pieces) {
		this.pdu_pieces = pdu_pieces;
	}


	public String getGooods_new_YN() {
		return gooods_new_YN;
	}


	public void setGooods_new_YN(String gooods_new_YN) {
		this.gooods_new_YN = gooods_new_YN;
	}


	@Override
	public String toString() {
		return "PduCategoryDetailVO [pdu_detail_code=" + pdu_detail_code + ", pdu_category_code_ref="
				+ pdu_category_code_ref + ", pdu_name=" + pdu_name + ", pdu_price=" + pdu_price + ", pdu_sale_price="
				+ pdu_sale_price + ", pdu_content=" + pdu_content + ", pdu_size=" + pdu_size + ", pdu_color="
				+ pdu_color + ", pdu_pieces=" + pdu_pieces + ", gooods_new_YN=" + gooods_new_YN + "]";
	} 
	
	
}
