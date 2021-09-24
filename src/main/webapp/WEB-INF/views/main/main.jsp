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
             <img src="${pageContext.request.contextPath}/resources/image/main/2.jpg" class="d-block w-100" alt="...">
           </div>
           <div class="carousel-item">
             <img src="${pageContext.request.contextPath}/resources/image/main/3.jpg" class="d-block w-100" alt="...">
           </div>
           <div class="carousel-item">
             <img src="${pageContext.request.contextPath}/resources/image/main/4.jpg" class="d-block w-100" alt="...">
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
       
     <!-- Section-->
     <nav class="navbar navbar-expand-lg navbar-light bg-light center">
         <div class="container px-4 px-lg-5">
             <!-- 사이즈작아질시 nav button -->
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
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
     <section class="py-5">
         <div class="container px-4 px-lg-5 mt-5">
             <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                 <div class="col mb-5">
                     <div class="card h-100">
                         <a href="/member/memberJoin.do">
                         <!-- Product image-->
                         <img class="card-img-top" src="${pageContext.request.contextPath}/resources/image/main/1.jpg" alt="..." />
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
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Sale badge-->
                         <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Special Item</h5>
                                 <!-- Product reviews-->
                                 <div class="d-flex justify-content-center small text-warning mb-2">
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                 </div>
                                 <!-- Product price-->
                                 <span class="text-muted text-decoration-line-through">$20.00</span>
                                 $18.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                         </div>
                     </div>
                 </div>
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Sale badge-->
                         <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Sale Item</h5>
                                 <!-- Product price-->
                                 <span class="text-muted text-decoration-line-through">$50.00</span>
                                 $25.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                         </div>
                     </div>
                 </div>
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Popular Item</h5>
                                 <!-- Product reviews-->
                                 <div class="d-flex justify-content-center small text-warning mb-2">
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                 </div>
                                 <!-- Product price-->
                                 $40.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                         </div>
                     </div>
                 </div>
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Sale badge-->
                         <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Sale Item</h5>
                                 <!-- Product price-->
                                 <span class="text-muted text-decoration-line-through">$50.00</span>
                                 $25.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                         </div>
                     </div>
                 </div>
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Fancy Product</h5>
                                 <!-- Product price-->
                                 $120.00 - $280.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                         </div>
                     </div>
                 </div>
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Sale badge-->
                         <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Special Item</h5>
                                 <!-- Product reviews-->
                                 <div class="d-flex justify-content-center small text-warning mb-2">
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                 </div>
                                 <!-- Product price-->
                                 <span class="text-muted text-decoration-line-through">$20.00</span>
                                 $18.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                         </div>
                     </div>
                 </div>
                 <div class="col mb-5">
                     <div class="card h-100">
                         <!-- Product image-->
                         <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                         <!-- Product details-->
                         <div class="card-body p-4">
                             <div class="text-center">
                                 <!-- Product name-->
                                 <h5 class="fw-bolder">Popular Item</h5>
                                 <!-- Product reviews-->
                                 <div class="d-flex justify-content-center small text-warning mb-2">
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                     <div class="bi-star-fill"></div>
                                 </div>
                                 <!-- Product price-->
                                 $40.00
                             </div>
                         </div>
                         <!-- Product actions-->
                         <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     
     <!-- Core theme JS -->
     <!-- 필요시 js파일추가할것 -->
     <script src="">
     
     </script>
</body>
</html> 