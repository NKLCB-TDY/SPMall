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
   <!-- Bootstrap 5 cdn-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
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

                 <sec:authorize access="isAnonymous()">
                     <button type="button" class="btn btn-outline-dark" 
                     	onclick="location.href='/main/mainLogin.do'">
                         <i class="bi bi-person-circle me-1"></i>
                         Login
                     </button>
                 </sec:authorize>
                 <!-- 회원권한 가질시 -->
                 <sec:authorize access="hasRole('ROLE_USER')">
                 	 <button class="btn btn-outline-dark" onclick="location.href='/cart/cartView.do'">
                         <i class="bi-cart-fill me-1"></i>
                         Cart
                         <span class="badge bg-dark text-white ms-1 rounded-pill" id="cartIcon"></span>
                     </button>
                 	
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
     <!-- Section-->
     <nav class="navbar navbar-expand-lg navbar-light bg-light ">
         <div class="container px-4 px-lg-5">
             <!-- 사이즈작아질시 nav button -->
             <div class="collapse navbar-collapse">
                 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 ">
                     <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!"></a></li>
                     <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                     <li class="nav-item dropdown">
                         <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" 
                         		data-bs-toggle="dropdown" aria-expanded="false">아우터</a>
                         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <li><a class="dropdown-item" href="#!">가디건/조끼</a></li>
                             <li><a class="dropdown-item" href="#!">자켓/코드</a></li>
                             <li><a class="dropdown-item" href="#!">패딩</a></li>
                         </ul>
                     </li>
                 </ul>

             </div>
         </div>
     </nav>
    <!-- jsdelivr CDN 
    	- header 스크롤 동작-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <!-- member 로그인시 cartCounting하는데 코드중복없이 사용하기에 header가 적합하다고생각해 여기적음 (더좋은 방법이생각나면 수정)-->
    <script>
	    $(function(){
	    		$.ajax({
	    			 type: 'POST',
	    			 dataType:'text',
	    			 url: '/cart/countingCart.do', 
	    			  success: function(data){
	    				  let cartNum = data;
	    				  $('#cartIcon').html(cartNum);
	    				  
	    			  },
	    				error : function(error) {
	    					console.log(error);
	    				}
	    			});
	    	});
    </script>
</body>
