package com.spmall.order;

public class OrderVO {
	//������ ����
	private String order_member_id;
	
	//�޴»�� ���� 
	private String recipient; //�޴»�� 
	private String order_addr1; //�ּ�
	private String order_addr2;
	private String order_addr3;
	private String order_addr4;
	private String recipient_phone; //�޴»�� ��ȭ��ȣ
	
	
	//�ֹ�����
	private String pdu_detail_code_ref;
	private String order_pdu_size;
	private String order_pdu_color;
	private int order_pdu_quantity;
	private String order_pdu_price; // ���ε� ���� (discounted price)�� ��
	
	//��������

	private String delivery_request; //��ۿ�û����
	
 
}
