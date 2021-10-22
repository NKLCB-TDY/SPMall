package com.spmall.order;

import java.util.Date;

public class OrderDetailVO {
	private int order_code_ref;
	private int order_pdu_detail_code_ref;
    private String order_pdu_price;	//상품 개당 가격
    private String order_pdu_size; // 상품사이즈
    private String order_pdu_color; //상품컬러
    private int order_pdu_quantity; //상품개수
    private String order_pdu_name;
    private Date order_date;
    private String pdu_image_file_name;
    
	public int getOrder_code_ref() {
		return order_code_ref;
	}
	public void setOrder_code_ref(int order_code_ref) {
		this.order_code_ref = order_code_ref;
	}
	public int getOrder_pdu_detail_code_ref() {
		return order_pdu_detail_code_ref;
	}
	public void setOrder_pdu_detail_code_ref(int order_pdu_detail_code_ref) {
		this.order_pdu_detail_code_ref = order_pdu_detail_code_ref;
	}
	public String getOrder_pdu_price() {
		return order_pdu_price;
	}
	public void setOrder_pdu_price(String order_pdu_price) {
		this.order_pdu_price = order_pdu_price;
	}
	public String getOrder_pdu_size() {
		return order_pdu_size;
	}
	public void setOrder_pdu_size(String order_pdu_size) {
		this.order_pdu_size = order_pdu_size;
	}
	public String getOrder_pdu_color() {
		return order_pdu_color;
	}
	public void setOrder_pdu_color(String order_pdu_color) {
		this.order_pdu_color = order_pdu_color;
	}
	public int getOrder_pdu_quantity() {
		return order_pdu_quantity;
	}
	public void setOrder_pdu_quantity(int order_pdu_quantity) {
		this.order_pdu_quantity = order_pdu_quantity;
	}
	public String getOrder_pdu_name() {
		return order_pdu_name;
	}
	public void setOrder_pdu_name(String order_pdu_name) {
		this.order_pdu_name = order_pdu_name;
	}
	
	
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	
	
	public String getPdu_image_file_name() {
		return pdu_image_file_name;
	}
	public void setPdu_image_file_name(String pdu_image_file_name) {
		this.pdu_image_file_name = pdu_image_file_name;
	}
	
	@Override
	public String toString() {
		return "OrderDetailVO [order_code_ref=" + order_code_ref + ", order_pdu_detail_code_ref="
				+ order_pdu_detail_code_ref + ", order_pdu_price=" + order_pdu_price + ", order_pdu_size="
				+ order_pdu_size + ", order_pdu_color=" + order_pdu_color + ", order_pdu_quantity=" + order_pdu_quantity
				+ ", order_pdu_name=" + order_pdu_name + "]";
	}
    
	
	
	
						
    						
    
}
