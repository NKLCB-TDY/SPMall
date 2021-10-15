<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	
     <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
         <div class="carousel-indicators">
           <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
           <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
           <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
         </div>
         <div class="carousel-inner">
           <div class="carousel-item active">
             <img src="${pageContext.request.contextPath}/resources/image/main/1.jpg" class="d-block w-100" alt="...">
           </div>
           <div class="carousel-item">	
             <img src="${pageContext.request.contextPath}/resources/image/main/2.jpg" class="d-block w-100" alt="...">
           </div>
           <div class="carousel-item">
             <img src="${pageContext.request.contextPath}/resources/image/main/3.jpg" class="d-block w-100" alt="...">
           </div>
         </div>
         <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
           <span class="carousel-control-prev-icon" aria-hidden="true"></span>
           <span class="visually-hidden">Previous</span>
         </button>
         <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
           <span class="carousel-control-next-icon" aria-hidden="true"></span>
           <span class="visually-hidden">Next</span>
         </button>
       </div>
       

     <section class="py-5">
         <div class="container px-4 px-lg-5 mt-5">
             <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                 <div class="col mb-5">
                     <div class="card h-100">
                         <a href="/member/memberJoin.do">
                         <!-- Product image-->
                         <!-- <img class="card-img-top" src="${pageContext.request.contextPath}/resources/image/main/.jpg" alt="..." /> -->
                         <!-- Product details-->
                         <div class="card-body p-4">
                             
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Fancy Product</h5>
                                 <!-- Product price-->
                                 $40.00 - $80.00
                             </div>
                             
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                             <span>30% 16,200</span>
                         </div>
                         </a>
                     </div>
                 </div>
                 
                 
                 
             </div>
         </div>
     </section>
</body>
</html> 