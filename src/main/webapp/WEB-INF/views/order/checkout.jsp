<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="list" value="${cartCodeList}" />
<!DOCTYPE html>
<html>
<head>
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
			      <td class="td2">${list[0].pdu_name}</td>
			    </tr>
			    <tr>
			      <td class="td1">이메일</td>
			      <td class="td2"></td>
			    </tr>
			    <tr>
			      <td class="td1">휴대폰 번호</td>
			      <td class="td2">누구누구</td>
			    </tr>
			  </tbody>
			 </table>
		</div>
		
		<div class="mb-5">
			<h4>받는 사람 정보</h4>
			<hr>
			<table class="table">
			  <tbody>
			    <tr>
			      <td class="td1">이름</td>
			      <td class="td2">ㅇㅇ</td>
			    </tr>
			    <tr>
			      <td class="td1">배송 주소</td>
			      <td class="td2">누구누구</td>
			    </tr>
			    <tr>
			      <td class="td1">휴대폰 번호</td>
			      <td class="td2">누구누구</td>
			    </tr>
			    <tr>
			      <td class="td1">배송 요청 사항</td>
			      <td class="td2">누구누구</td>
			    </tr>
			  </tbody>
			 </table>
		</div>
		
		
		<div class="mb-5">
			<h4>결제정보</h4>
			<hr>
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
</body>
</html>