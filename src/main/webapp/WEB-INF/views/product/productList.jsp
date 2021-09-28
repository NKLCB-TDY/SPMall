<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<head>

	<style>
	.product-grid{
    background-color: #fff;
    font-family: 'Work Sans', sans-serif;
    text-align: center;
    transition: all 0.3s ease 0s;
}
.product-grid:hover{ box-shadow:  0 0 20px -10px rgba(237,29,36,0.3); }
.product-grid .product-image{
    overflow: hidden;
    position: relative;
    transition: all 0.3s ease 0s;
}
.product-grid:hover .product-image{ border-radius: 0 0 30px 30px; }
.product-grid .product-image a.image{ display: block; }
.product-grid .product-image img{
    width: 100%;
    height: auto;
}
.product-image .pic-1{
    backface-visibility: hidden;
    transition: all 0.5s ease 0s;
}
.product-grid:hover .product-image .pic-1{ opacity: 0; }
.product-image .pic-2{
    width: 100%;
    height: 100%;
    backface-visibility: hidden;
    opacity: 0;
    position: absolute;
    top: 0;
    left: 0;
    transition: all 0.5s ease 0s;
}
.product-grid:hover .product-image .pic-2{ opacity: 1; }
.product-grid .product-links{
    padding: 0;
    margin: 0;
    list-style: none;
    opacity: 0;
    position: absolute;
    bottom: 0;
    right: 10px;
    transition: all 0.3s ease 0s;
}
.product-grid:hover .product-links{ opacity: 1; }
.product-grid .product-links li{
    margin: 0 0 10px 0;
    transform: rotate(360deg) scale(0);
    transition: all 0.3s ease 0s;
}
.product-grid:hover .product-links li{ transform: rotate(0) scale(1); }
.product-grid:hover .product-links li:nth-child(3){ transition-delay: 0.1s; }
.product-grid:hover .product-links li:nth-child(2){ transition-delay: 0.2s; }
.product-grid:hover .product-links li:nth-child(1){ transition-delay: 0.3s; }
.product-grid .product-links li a{
    color: #666;
    background-color: #fff;
    font-size: 18px;
    line-height: 42px;
    width: 40px;
    height: 40px;
    border-radius: 50px;
    display: block;
    transition: all 0.3s ease 0s;
}
.product-grid .product-links li a:hover{
    color: #fff;
    background-color: #ed1d24;
}
.product-grid .product-content{
    text-align: left;
    padding: 15px 10px;
}
.product-grid .rating{
    padding: 0;
    margin: 0 0 7px;
    list-style: none;
}
.product-grid .rating li{
    color: #f7bc3d;
    font-size: 13px;
}
.product-grid .rating li.far{ color: #777; }
.product-grid .title{
    font-size: 16px;
    font-weight: 600;
    text-transform: capitalize;
    margin: 0 0 6px;
}
.product-grid .title a{
    color: #555;
    transition: all 0.3s ease 0s;
}
.product-grid .title a:hover{ color: #ed1d24; }

.product-grid .price{
    color: #76b713;
    font-size: 18px;
    font-weight: 700;
}

.product-grid .price span{
    color: #999;
    font-size: 16px;
    font-weight: 500;
    text-decoration: line-through;
}
@media screen and (max-width:990px){
    .product-grid{ margin: 0 0 30px; }
}
	</style>
</head>


<body>
<!-- img count할 index 변수 선언 -->
<c:set var="idxCount" value="0"/>
<div class="container">
	<div class="row">
		<c:forEach items="${productList}" var="productVO" varStatus="status">
	    <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 ">
	        <div class="product-grid">
	            <div class="product-image">
	                <a href="/product/productDetailList.do${pagingSetting.makeQuery(pagingSetting.cri.page)
		                		}&pdu_detail_code=${productVO.pdu_detail_code}" class="image">
		                	
						<!-- img는 main 이미지 한개, sub1 이미지 한개, 총2개 출력해야되기에 index 변수 선언 후 증감으로 처리 -->
		                   <img class="pic-1" src="/zzz/upload/${imageList[idxCount].pdu_detail_code_ref}/${imageList[idxCount].pdu_image_file_name}">
		                   <c:set var="idxCount" value="${idxCount+1}"/>
		                   <img class="pic-2" src="/zzz/upload/${imageList[idxCount].pdu_detail_code_ref}/${imageList[idxCount].pdu_image_file_name}">
		                   <c:set var="idxCount" value="${idxCount+1}"/>
	                </a>
	                <ul class="product-links">
	                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
	                    <li><a href="#"><i class="far fa-heart"></i></a></li>
	                    <li><a href="#"><i class="fa fa-random"></i></a></li>
	                    <li>
	                    	<a href="/product/productDetailList.do${pagingSetting.makeQuery(pagingSetting.cri.page)
		                		}&pdu_detail_code=${productVO.pdu_detail_code}"><i class="fa fa-search"></i>
		                	</a>
		                </li>
	                </ul>
	            </div>
	            <div class="product-content">
	                <ul class="rating">
	                    <li class="fa fa-star"></li>
	                    <li class="fa fa-star"></li>
	                    <li class="fa fa-star"></li>
	                    <li class="fa fa-star"></li>
	                    <li class="far fa-star"></li>
	                </ul>
	                <h3 class="title">
		                <a href="/product/productDetailList.do${pagingSetting.makeQuery(pagingSetting.cri.page)
		                		}&pdu_detail_code=${productVO.pdu_detail_code}">

		              			${productVO.pdu_name}
		              	</a>
	              	</h3>
	                <div class="price">
	                	<span>
	                		<fmt:formatNumber value="${productVO.pdu_price }" pattern="#,###" />원
	                	</span> <fmt:formatNumber value="${productVO.pdu_discounted_price }" pattern="#,###" />원
	                </div>
	            </div>
	        </div>
	    </div>
	    </c:forEach>
	      

	</div>
	

	<div class="text-center">
			<ul class="pagination">

				<c:if test="${pagingSetting.prev}">
					<li><a class="page-link"
						href="productList.do${pagingSetting.makeQuery(pagingSetting.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pagingSetting.startPage }"
					end="${pagingSetting.endPage }" var="idx">

					<li 
						<c:if test="${pagingSetting.cri.page == idx}">
							 class="page-item active"
						</c:if>>
						
						
						<a class="page-link" href="productList.do${pagingSetting.makeQuery(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pagingSetting.next && pagingSetting.endPage > 0}">
					<li ><a class="page-link"
						href="productList.do${pagingSetting.makeQuery(pagingSetting.endPage +1) }">&raquo;</a></li>
				</c:if>

			</ul>
			
			
		</div>
</div>

</body>