<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="orderDateBefore"/>
<div class="container pt-5 ">
	<h1>주문 목록</h1>
	<br>
	<c:forEach items="${orderDetailList}" var = "orderDetail">
		<!-- 그다음 출력할 값저장 -->
		<c:set var="orderDateNext"><fmt:formatDate value="${orderDetail.order_date}" pattern="yyyy.MM.dd" /></c:set>
		<c:if test="${orderDateNext ne orderDateBefore }">
			<h2 class=""><fmt:formatDate value="${orderDetail.order_date}" pattern="yyyy.MM.dd" />
				 주문
			</h2>
		</c:if>
		<c:set var="orderDateBefore"><fmt:formatDate value="${orderDetail.order_date}" pattern="yyyy.MM.dd" /></c:set>
	
	
		<hr>
		<div style="text-align: center;">
			<div class="card" style="display: inline-block;">
				<h3></h3>
				<table class="table table-hover shopping-cart-wrap">
					<thead class="text-muted">
						<tr>
						  <th scope="col" width="10%">배송상태</th>
						  <th scope="col" width="10%">주문일자</th>
						  <th scope="col" width="10%">상품 이미지</th>
						  <th scope="col" width="10%">상품 이름</th>
						  <th scope="col" width="20%">상품 내용</th>
						  <th scope="col" width="10%">수량</th>
						  <th scope="col" width="10%">상품가격</th>
						</tr>
					</thead>
				
					<tbody>
						
						<tr>
							<td>
								${orderDetail.order_status}
							</td>
							<td>
								<fmt:formatDate value="${orderDetail.order_date}" pattern="yyyy.MM.dd" />
							</td>	
							<td>
								<img class="img-thumbnail"
									src="/test/upload/${orderDetail.order_pdu_detail_code_ref}/s_${orderDetail.pdu_image_file_name}">
							</td>
							
							<td> 	
						    	${orderDetail.order_pdu_name }
							</td>
							<td> 
								Size : ${orderDetail.order_pdu_size }<br/>
								Color : ${orderDetail.order_pdu_color }
							</td>
							<td class="text-right"> 
								${orderDetail.order_pdu_quantity }
							</td>
							<td>
								${orderDetail.order_pdu_price}
							</td>
						</tr>
					
					
					
			
				
					</tbody>
				</table>
			</div> <!-- card.// -->
		</div>
	</c:forEach>
	
</div> 
	
</body>
