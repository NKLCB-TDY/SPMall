package com.spmall.order;

import java.util.Date;

public class OrderVO {
	//구매자 정보
	private int order_code;
	private String order_member_id;
	
	//받는사람 정보 
	private String order_recipient; //받는사람 
	private String order_addr1; //주소
	private String order_addr2;
	private String order_addr3;
	private String order_addr4;
	private String order_recipient_phone; //받는사람 전화번호
	private String order_shp_request; //배송 요청 사항
	
	//주문정보
	private Date order_date;
	private String pdu_detail_code_ref;
	private String order_pdu_size;
	private String order_pdu_color;
	private int order_pdu_quantity;
	private int order_shipping; // 배송비
	private int order_use_point; //포인트 사용
	//결제정보
	
	private String order_total_pdu_price; 
	

	
	

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public String getOrder_member_id() {
		return order_member_id;
	}

	public void setOrder_member_id(String order_member_id) {
		this.order_member_id = order_member_id;
	}

	public String getOrder_recipient() {
		return order_recipient;
	}

	public void setOrder_recipient(String order_recipient) {
		this.order_recipient = order_recipient;
	}

	public String getOrder_addr1() {
		return order_addr1;
	}

	public void setOrder_addr1(String order_addr1) {
		this.order_addr1 = order_addr1;
	}

	public String getOrder_addr2() {
		return order_addr2;
	}

	public void setOrder_addr2(String order_addr2) {
		this.order_addr2 = order_addr2;
	}

	public String getOrder_addr3() {
		return order_addr3;
	}

	public void setOrder_addr3(String order_addr3) {
		this.order_addr3 = order_addr3;
	}

	public String getOrder_addr4() {
		return order_addr4;
	}

	public void setOrder_addr4(String order_addr4) {
		this.order_addr4 = order_addr4;
	}

	public String getOrder_recipient_phone() {
		return order_recipient_phone;
	}

	public void setOrder_recipient_phone(String order_recipient_phone) {
		this.order_recipient_phone = order_recipient_phone;
	}

	public String getOrder_shp_request() {
		return order_shp_request;
	}

	public void setOrder_shp_request(String order_shp_request) {
		this.order_shp_request = order_shp_request;
	}

	public String getPdu_detail_code_ref() {
		return pdu_detail_code_ref;
	}

	public void setPdu_detail_code_ref(String pdu_detail_code_ref) {
		this.pdu_detail_code_ref = pdu_detail_code_ref;
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

	public String getOrder_total_pdu_price() {
		return order_total_pdu_price;
	}

	public void setOrder_total_pdu_price(String order_total_pdu_price) {
		this.order_total_pdu_price = order_total_pdu_price;
	}

	

	
	public int getOrder_shipping() {
		return order_shipping;
	}

	public void setOrder_shipping(int order_shipping) {
		this.order_shipping = order_shipping;
	}

	
	public int getOrder_use_point() {
		return order_use_point;
	}

	public void setOrder_use_point(int order_use_point) {
		this.order_use_point = order_use_point;
	}

	@Override
	public String toString() {
		return "OrderVO [order_member_id=" + order_member_id + ", order_recipient=" + order_recipient + ", order_addr1="
				+ order_addr1 + ", order_addr2=" + order_addr2 + ", order_addr3=" + order_addr3 + ", order_addr4="
				+ order_addr4 + ", order_recipient_phone=" + order_recipient_phone + ", order_shp_request="
				+ order_shp_request + ", pdu_detail_code_ref=" + pdu_detail_code_ref + ", order_pdu_size="
				+ order_pdu_size + ", order_pdu_color=" + order_pdu_color + ", order_pdu_quantity=" + order_pdu_quantity
				+ ", order_shipping=" + order_shipping + ", order_use_point=" + order_use_point
				+ ", order_total_pdu_price=" + order_total_pdu_price + "]";
	}

	
	
	
}
