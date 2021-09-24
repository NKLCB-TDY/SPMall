<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>당근당근</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/common.css" />
	
</head>
<body>
	<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <div class="container px-4 px-lg-5">
             <a class="navbar-brand" href="/main/main.do">당근셔핑</a>
             <!-- 사이즈작아질시 nav button -->
             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                 </ul>
                  <sec:authorize access="hasRole('ROLE_USER')">
                  	<sec:authentication property="principal.username" var="member_name" />
                  </sec:authorize>
                 	<button class="btn btn-outline-dark">
                         <i class="bi-cart-fill me-1"></i>
                         Cart
                         <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                     </button>
                 <sec:authorize access="isAnonymous()">
                     <button type="button" class="btn btn-outline-dark" 
                     	onclick="location.href='/main/mainLogin.do'">
                         <i class="bi bi-person-circle me-1"></i>
                         Login
                     </button>
                 </sec:authorize>
                 <!-- 회원권한 가질시 -->
                 <sec:authorize access="hasRole('ROLE_USER')">
                 	
                 	<button type="button" class="btn btn-outline-dark" 
                     	onclick="location.href='/mypage/membermypage.do'">
                         <i class="bi bi-person-circle me-1"></i>
                         마이페이지
                     </button>
                     <button type="button" class="btn btn-outline-dark" 
                     	onclick="location.href='/logout'">
                         <i class="bi bi-person-circle me-1"></i>
                         LogOut
                     </button>
                 </sec:authorize>
          
    				
					
                 
             </div>
         </div>
     </nav>
     
    <!-- jsdelivr CDN 
    	- header 스크롤 동작-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
