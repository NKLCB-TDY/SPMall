<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                     <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                     <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                     <li class="nav-item dropdown">
                         <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <li><a class="dropdown-item" href="#!">All Products</a></li>
                             <li><hr class="dropdown-divider" /></li>
                             <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                             <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                         </ul>
                     </li>
                     
                     <li class="nav-item">
                     	<input type="text" id="keyword" name="keyword" class="form-control" aria-label="Large" autocomplete="off" placeholder="검색어를 입력하세요."></input>
                     </li>
                     <li class="nav-item">
                     	<button type="submit" class="btn btn-light">검색</button>
                     </li>
                 </ul>
                 <form class="d-flex">
                     <button type="button" class="btn btn-outline-dark" 
                     	onclick="location.href='/member/memberloginform.do'">
                         <i class="bi bi-person-circle me-1"></i>
                         Login
                     </button>
                     
                     <button class="btn btn-outline-dark">
                         <i class="bi-cart-fill me-1"></i>
                         Cart
                         <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                     </button>
                 </form>
             </div>
         </div>
     </nav>
     
    <!-- jsdelivr CDN 
    	- header 스크롤 동작-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    
</body>