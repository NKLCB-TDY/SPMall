<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>	

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    
    <!-- Favicon-->
    
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Bootstrap 5 cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
	 
	<!-- 검색버튼 font -->
  	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  	<!-- 검색버튼 동작 및 css -->
	<link rel="stylesheet" type="text/css" href="/resources/css/common/headsearchbtn.css">
</head>

<body>

	<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <div class="container px-4 px-lg-5">
             <a class="navbar-brand" href="/main/main.do">옷 쇼핑</a>
             
             <!-- 검색버튼 -->
             <fieldset>
             	<input type="text" class="searchKeyword" id="keywordInput" placeholder="찾으시는 물건이있나요?" value="${cri.keyword}"/>
           		<button type="button" class="searchKeywordBtn" id="searchBtn">
           			<i class="fa fa-search" id="iconSearch"></i>
           		</button>
             </fieldset>
             
             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                     
                 </ul>
                 
                 <form class="d-flex">
                     <button type="button" class="btn btn-outline-dark"  
                     	onclick="moveLogin()">
                         <i class="bi bi-person-circle me-1"></i>
                         Login
                     </button>
                     
                     <button type="button" class="btn btn-outline-dark "
                     	onclick="moveLogin1()">
                         <i class="bi-cart-fill me-1"></i>
                         Cart
                         <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                     </button>
                 </form>
             </div>
         </div>
         
     </nav>
     <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5 justify-content-center">
         <div class="container px-4 px-lg-5 ">
             <div class="collapse navbar-collapse justify-content-center " id="navbarSupportedContent">
             	
             	<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 ">
                     <li class="nav-item "><a class="nav-link" href="/product/productList.do" >ALL</a></li>
                     <li class="nav-item dropdown" >
                         <a class="nav-link dropdown-toggle" id="navbarDropdown" 
                         	href="#"
                   			role="button" data-bs-toggle="dropdown" aria-expanded="false">아우터</a>
                         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=AA&keyword=">가디건/조끼</a></li>
                             <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=AB&keyword=">자켓/코트</a></li>
                             <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=AC&keyword=">패딩</a></li>
                         </ul>
                     </li>
                     <li class="nav-item dropdown" >
                      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" 
                      	data-bs-toggle="dropdown" aria-expanded="false">상의 </a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=BA&keyword=" >티셔츠</a></li>
                          <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=BB&keyword=">맨투맨</a></li>
                          <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=BC&keyword=">후드</a></li>
                          <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=BD&keyword=">반팔</a></li>
                      </ul>       
                     </li>
                         
                     <li class="nav-item "><a class="nav-link" href="/product/productList.do?page1=PerpageNum=8&searchType=C&keyword=" >셔츠/블라우스</a></li>
                     <li class="nav-item "><a class="nav-link" href="/product/productList.do?page1=PerpageNum=8&searchType=D&keyword=" >트레이닝</a></li>
                     <li class="nav-item "><a class="nav-link" href="/product/productList.do?page1=PerpageNum=8&searchType=E&keyword=" >원피스</a></li>
                     
                     
                     <li class="nav-item dropdown" >
                     	<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" 
                      	data-bs-toggle="dropdown" aria-expanded="false">팬츠 </a>
                      	<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                        <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=FA&keyword=" >청바지</a></li>
	                        <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=FB&keyword=">롱팬츠</a></li>
	                        <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=FC&keyword=">슬랙스</a></li>
	                        <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=FD&keyword=">면바지</a></li>
	                        <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=FE&keyword=">레깅스</a></li>
                     	</ul>       
                     </li>
                      <li class="nav-item dropdown" >
						<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" 
                      		data-bs-toggle="dropdown" aria-expanded="false">가방 </a>
                     	<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=GA&keyword=" >백팩</a></li>
                          	<li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=GB&keyword=">크로스/토드백</a></li>
                      	</ul> 
                     </li>
                	 
                	 <li class="nav-item dropdown" >
						<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" 
							data-bs-toggle="dropdown" aria-expanded="false">신발 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=HA&keyword=" >운동화/단화</a></li>
						    <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=HB&keyword=">구두/워커</a></li>
						    <li><a class="dropdown-item" href="/product/productList.do?page1=PerpageNum=8&searchType=HC&keyword=">샌들/슬리퍼/장화</a></li>
						</ul> 
                     </li>            
				</ul>
             </div>
         </div>
    </nav>
     
     
    <!-- jsdelivr CDN 
    	- header 스크롤 동작-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 없으면 비회원일때 AJAX 실행안됨 -->
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
    	
    	function moveLogin(){
    		location.href='/main/mainLogin.do';
    	}
    	function moveLogin1(){
    		alert('로그인후 이용이가능합니다.');
    		location.href='/main/mainLogin.do';
    	}
    	
    	$(function(){
    		//검색처리
    		$("#searchBtn").on("click", function(event){
    					location.href = "/product/productList.do?"
    						+ '${pagingSetting.makeQuery(1)}'
    						+ "&searchType="
    						+ "&keyword=" + encodeURIComponent($('#keywordInput').val());
    		});
    	});
    	
    </script>
    
</body>
