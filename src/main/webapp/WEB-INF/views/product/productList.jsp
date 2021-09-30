<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/product/product.css">
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
	                <a href="/product/productDetail.do${pagingSetting.makeQuery(pagingSetting.cri.page)
		                		}&pdu_detail_code=${productVO.pdu_detail_code}" class="image">
		                	
						<!-- img는 main 이미지 한개, sub1 이미지 한개, 총2개 출력해야되기에 index 변수 선언 후 증감으로 처리 -->
		                   <img class="pic-1" src="/test/upload/${imageList[idxCount].pdu_detail_code_ref}/${imageList[idxCount].pdu_image_file_name}">
		                   <c:set var="idxCount" value="${idxCount+1}"/>
		                   <img class="pic-2" src="/test/upload/${imageList[idxCount].pdu_detail_code_ref}/${imageList[idxCount].pdu_image_file_name}">
		                   <c:set var="idxCount" value="${idxCount+1}"/>
	                </a>
	                <ul class="product-links">
	                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
	                    <li><a href="#"><i class="far fa-heart"></i></a></li>
	                    <li><a href="#"><i class="fa fa-random"></i></a></li>
	                    <li>
	                    	<a href="/product/productDetail.do${pagingSetting.makeQuery(pagingSetting.cri.page)
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
		                <a href="/product/productDetail.do${pagingSetting.makeQuery(pagingSetting.cri.page)
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