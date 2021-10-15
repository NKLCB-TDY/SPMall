<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:set var="list" value="${cartCodeList}" />
<!DOCTYPE html>
<html>
<head>
<!-- 주소처리 js -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/order/checkout.js"></script>
<style>
	.td1{
		   width: 120px;
		   border: solid #e4e4e4;
		   border-width: 0 1px 1px 0;
		   padding: 7px 10px 7px 15px;
		   font-weight: 700;
		   text-align: right;
		   background: #f4f4f4 !important;
	}
	.td2{
		border-bottom: 1px solid #e4e4e4;
		padding: 10px 16px;
	}
</style>
<meta charset="UTF-8">
<title>주문/결제</title>

<link rel="stylesheet" href="/resources/css/cart/cart.css">
</head>
<body>
<c:set var="count" value="1"/>
	<div class="container pt-5">
		<div class="mb-5">
			<br>
			<h2 class="text-left">주문 / 결제 </h2>
			<hr>
		</div>
		<div class="mb-5">
			<h4>구매자 정보</h4>
			<hr>
			<table class="table">
			  <tbody>
			    <tr>
			      <td class="td1">이름</td>
			      <td class="td2">${memberVO.member_name}</td>
			    </tr>
			    <tr>
			      <td class="td1">이메일</td>
			      <td class="td2">${memberVO.member_email1}@${memberVO.member_email2}</td>
			    </tr>
			    <tr>
			      <td class="td1">휴대폰 번호</td>
			      <td class="td2">
				      ${fn:substring(memberVO.member_phone,0,3)} -
				      ${fn:substring(memberVO.member_phone,3,7)} -
				      ${fn:substring(memberVO.member_phone,7,11)}
			      </td>
			    </tr>
			  </tbody>
			 </table>
		</div>
		
		<div class="mb-5">
			<h4>받는 사람 정보</h4><input type="checkbox" onclick="insertInfo()"> 로그인한 아이디 정보와 동일
			<hr>
			<table class="table">
			  <tbody>
			    <tr>
			     	<td class="td1">이름</td>
			      	<td class="td2"><input type="text" class="mr-5" name="recipient_name" id="recipient_name"></td>
			    </tr>
			    <tr>
			      	<td class="td1">주소</td>
			      	<td class="td2">우편번호 : <input type="text"
									name="order_addr1" id="postCode"
									placeholder="우편번호">
									<input type="button" onclick="find_addr()"
									value="주소찾기">
				  </td>
			    </tr>
			    <tr>
			      	<td class="td1"></td>
			      	<td class="td2">
			      				주소 : <input type="text"  name="order_addr2"
									id="basicAddr" placeholder="기본주소" >
								 <input type="text"  name="order_addr3"
									id="dongAddr" placeholder="동" >
								 <input type="text"  name="order_addr4"
									id="detailAddr" placeholder="상세주소">
					</td>
			    </tr>
			    <tr>
			      <td class="td1">휴대폰 번호</td>
			     
				
				
			      <td class="td2">	<input type="hidden" name ="member_phone" id = "member_phone">
			      					<input type="text" id="member_cp1" 
			      						
			      						onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"/> - 
			      					<input type="text" id="member_cp2" 
			      						
			      						onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"/> -
			      					<input type="text" id="member_cp3" 
			      						 
			      						onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"/></td>
			    </tr>
			    <tr>
			      <td class="td1">배송 요청 사항</td>
			      <td class="td2"><input type="text" placeholder="" size="50" value="없음"></td>
			    </tr>
			  </tbody>
			 </table>
		</div>
		

	
		<div class="mb-5">
			<h4>결제정보</h4>
			<hr>
					<div class="mt-5 ">
			<table class="table text-center">
			  <thead>
			    <tr class="table-secondary">
			      <td>번호</td>
			      <th scope="col">이미지</th>
			      <th scope="col">상품명</th>
			      <th scope="col">사이즈</th>
			      <th scope="col">색상</th>
			      <th scope="col">판매가</th>
			      <td scope="col">수량</td>
			      <th scope="col">적립 포인트</th>
			      <th scope="col">합계</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${cartList}" var="cartVO">
			    <tr class= "table-success">
			      <td><c:out value="${count}"/></td>
			      <td scope="row">
			      	<img class="img-thumbnail"
									src="/test/upload/${cartVO.cart_pdu_detail_code_ref }/s_${cartVO.pdu_image_file_name}">
			      </td>
			      <td scope="row">${cartVO.pdu_name}</td>
			      <td scope="row">${cartVO.cart_pdu_size}</td>
			      <td scope="row">${cartVO.cart_pdu_color}</td>
			      <td scope="row">
			      	<span class="mr-2" id="total_Price" >${cartVO.pdu_discounted_price}</span>원
			      </td>
			      <td scope="row">${cartVO.cart_pdu_quantity}</td>
			      <td scope="row"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###"
									 value="${cartVO.pdu_discounted_price/100}"/></td>
			      <td scope="row" style="color: red;">${cartVO.pdu_discounted_price*cartVO.cart_pdu_quantity}</td>
			    </tr>
			    
			    <c:set var="count" value="${count+1}"/>
			   </c:forEach>
			  </tbody>
			</table>
		</div>
			
			<table class="table">
			  <tbody>
			    <tr>
			      <td class="td1">총 상품가격</td>
			      <td class="td2">ㅇㅇ</td>
			    </tr>
			    <tr>
			      <td class="td1">포인트사용</td>
			      <td class="td2">0원</td>
			    </tr>
			    <tr>
			      <td class="td1">배송비</td>
			      <td class="td2">0원</td>
			    </tr>
			    <tr>
			      <td class="td1">총 결재금액</td>
			      <td class="td2">누구누구</td>
			    </tr>
			    <tr>
			      <td class="td1">결제 방법</td>
			      <td class="td2">누구누구</td>
			    </tr>
			  </tbody>
			 </table>
		</div>
	</div>
	
	
	<div class="d-flex justify-content-center mt-5">
		<button class="btn btn-danger btn-lg" onclick="Submit()">구매 하기</button>
	</div>
	
	
	<script>
		function insertInfo(){
			$('#recipient_name').val("${memberVO.member_name}");
			
			$('input[name=order_addr1]').val("${memberVO.member_addr1}");
			$('input[name=order_addr2]').val("${memberVO.member_addr2}");
			$('input[name=order_addr3]').val("${memberVO.member_addr3}");
			$('input[name=order_addr4]').val("${memberVO.member_addr4}");
			$('#member_cp1').val("${memberVO.member_phone}".substring(0,3));
			$('#member_cp2').val("${memberVO.member_phone}".substring(3,7));
			$('#member_cp3').val("${memberVO.member_phone}".substring(7,11));
		}
		
		function Submit(){
			
		}
	</script>
</body>
</html>