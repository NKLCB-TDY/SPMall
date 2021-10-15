package com.spmall.order;

public class OrderVO {
	//구매자 정보
	private String order_member_id;
	
	//받는사람 정보 
	private String recipient; //받는사람 
	private String order_addr1; //주소
	private String order_addr2;
	private String order_addr3;
	private String order_addr4;
	private String recipient_phone; //받는사람 전화번호
	
	
	//주문정보
	private String pdu_detail_code_ref;
	private String order_pdu_size;
	private String order_pdu_color;
	private int order_pdu_quantity;
	private String order_pdu_price; // 할인된 가격 (discounted price)가 들어감
	
	//결제정보

	private String delivery_request; //배송요청사항
	
 
}
