<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="ml-3">
		<h2>회원 정보</h2>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>휴대폰</th>
						<th>이메일</th>
						<th>아이디 생성일</th>
						<th>회원 상태</th>
     				</tr>
     			</thead>
				
				<c:forEach items="${memberList}" var="memberVO" >
				
				<tbody>
                  <tr>
                      <td>${memberVO.member_id}</td>
                      <td>${memberVO.member_name }</td>
                      <td>${memberVO.member_gender }</td>
                      <td>${memberVO.member_phone }</td>
                      <td>${memberVO.member_email1}@${memberVO.member_email2}</td>
                      <td><fmt:formatDate value="${memberVO.member_create_at}" pattern="yyyy.MM.dd" /></td>
                      <td>${memberVO.member_del_yn}</td>
                  </tr>
				</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>