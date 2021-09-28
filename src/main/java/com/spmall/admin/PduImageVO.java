package com.spmall.admin;

public class PduImageVO {
	private int pdu_img_code;
	private int pdu_detail_code_ref;	//참조하는 상품 코드
	private String pdu_image_file_name;	//file 이름
	private String pdu_image_file_type; //main_image, sub_image1 말함
	
	
	public int getPdu_img_code() {
		return pdu_img_code;
	}
	public void setPdu_img_code(int pdu_img_code) {
		this.pdu_img_code = pdu_img_code;
	}
	public int getPdu_detail_code_ref() {
		return pdu_detail_code_ref;
	}
	public void setPdu_detail_code_ref(int pdu_detail_code_ref) {
		this.pdu_detail_code_ref = pdu_detail_code_ref;
	}
	public String getPdu_image_file_name() {
		return pdu_image_file_name;
	}
	public void setPdu_image_file_name(String pdu_image_file_name) {
		this.pdu_image_file_name = pdu_image_file_name;
	}
	public String getPdu_image_file_type() {
		return pdu_image_file_type;
	}
	public void setPdu_image_file_type(String pdu_image_file_type) {
		this.pdu_image_file_type = pdu_image_file_type;
	}
	@Override
	public String toString() {
		return "PduImageVO [pdu_img_code=" + pdu_img_code + ", pdu_detail_code_ref=" + pdu_detail_code_ref
				+ ", pdu_image_file_name=" + pdu_image_file_name + ", pdu_image_file_type=" + pdu_image_file_type + "]";
	}

	
	
}
