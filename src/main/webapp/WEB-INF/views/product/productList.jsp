<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<link rel="stylesheet" type="text/css" href="/resources/css/product/product.css">

<style>
	.contents{
		padding: 0 0 55px 0;
	    min-height: 60px;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-size: 40px;
	    color: #ff7d9e;
	    text-align: center;
	   
	}

</style>
</head>


<body>

<!-- img count할 index 변수 선언 -->

<div class="contents mb-5">
	<!-- cri.searchType이 AA면 아우터>가디건 인것처럼 첫글자가 대분류를 의미 (A:아우터, B:상의 ..) -->
		<c:choose>
			<c:when test="${not empty cri.keyword}"><span style="">통합 검색 :</span> "${cri.keyword}"</c:when>
			<c:when test="${cri.searchType eq 'AA'}"><h1>아우터</h1><h4>가디건 / 조끼</h4></c:when>
			<c:when test="${cri.searchType eq 'AB'}"><h1>아우터</h1><h4>자켓 / 코트</h4></c:when>
			<c:when test="${cri.searchType eq 'AC'}"><h1>아우터</h1><h4>패딩</h4></c:when>
			<c:when test="${cri.searchType eq 'BA'}"><h1>상의</h1><h4>티셔츠</h4></c:when>
			<c:when test="${cri.searchType eq 'BB'}"><h1>상의</h1><h4>맨투맨</h4></c:when>
			<c:when test="${cri.searchType eq 'BC'}"><h1>상의</h1><h4>후드</h4></c:when>
			<c:when test="${cri.searchType eq 'BD'}"><h1>상의</h1><h4>반팔</h4></c:when>
			<c:when test="${cri.searchType eq 'C'}"><h1>셔츠 / 블라우스</h1></c:when>
			<c:when test="${cri.searchType eq 'D'}"><h1>트레이닝</h1></c:when>
			<c:when test="${cri.searchType eq 'E'}"><h1>원피스</h1></c:when>
			<c:when test="${cri.searchType eq 'FA'}"><h1>팬츠</h1><h4>청바지</h4></c:when>
			<c:when test="${cri.searchType eq 'FB'}"><h1>팬츠</h1><h4>롱바지</h4></c:when>
			<c:when test="${cri.searchType eq 'FC'}"><h1>팬츠</h1><h4>슬랙스</h4></c:when>
			<c:when test="${cri.searchType eq 'FD'}"><h1>팬츠</h1><h4>면바지</h4></c:when>
			<c:when test="${cri.searchType eq 'FE'}"><h1>팬츠</h1><h4>레깅스</h4></c:when>
			<c:when test="${cri.searchType eq 'GA'}"><h1>가방</h1><h4>백팩</h4></c:when>
			<c:when test="${cri.searchType eq 'GB'}"><h1>가방</h1><h4>크로스 / 토드백</h4></c:when>
			<c:when test="${cri.searchType eq 'HA'}"><h1>신발</h1><h4>운동화 / 단화</h4></c:when>
			<c:when test="${cri.searchType eq 'HB'}"><h1>신발</h1><h4>구두 / 워커</h4></c:when>
			<c:when test="${cri.searchType eq 'HC'}"><h1>신발</h1><h4>샌들 / 슬리퍼 / 장화</h4></c:when>
			<c:otherwise>ALL</c:otherwise>
		</c:choose>
	
	
</div>

<c:set var="idxCount" value="0"/>
<!-- 원래 검색창<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}"> <button id="searchBtn">Search</button>-->


<div class="container mt-5 mb-5">

	<div class="row">
		<c:forEach items="${productList}" var="productVO" varStatus="status">
	    <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 ">
	        <div class="product-grid">
	            <div class="product-image">
	                <a href="/product/productDetail.do${pagingSetting.makeSearch(pagingSetting.cri.page)
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
	                    <li>
	                    	<a href="/product/productDetail.do${pagingSetting.makeSearch(pagingSetting.cri.page)
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
		                <a href="/product/productDetail.do${pagingSetting.makeSearch(pagingSetting.cri.page)
		                		}&pdu_detail_code=${productVO.pdu_detail_code}">

		              			${productVO.pdu_name}
		              	</a>
	              	</h3>
	                <div class="price">
	                	<span>
	                	

	                		<fmt:formatNumber type="number" value="${productVO.pdu_price }" pattern="###,###,###,###,###,###" />원
	                	</span> <fmt:formatNumber type="number" value="${productVO.pdu_discounted_price }" pattern="###,###,###,###,###,###" />원
	                </div>
	            </div>
	        </div>
	    </div>
	    </c:forEach>
	      

	</div>
	

	<div class="d-flex justify-content-center mt-5">
		<ul class="pagination">
			<c:if test="${pagingSetting.prev}">
				<li><a class="page-link"
					href="productList.do${pagingSetting.makeSearch(pagingSetting.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pagingSetting.startPage }"
				end="${pagingSetting.endPage }" var="idx">

				<li 
					<c:if test="${pagingSetting.cri.page == idx}">
						 class="page-item active"
					</c:if>>
					
					
					<a class="page-link" href="productList.do${pagingSetting.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pagingSetting.next && pagingSetting.endPage > 0}">
				<li ><a class="page-link"
					href="productList.do${pagingSetting.makeSearch(pagingSetting.endPage +1) }">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
</div>


<!-- 개별 검색으로 사용시 이거 추가
	$(function(){
		$("#searchBtn").on("click", function(event){
			self.location = "productList.do"
				+ '${pagingSetting.makeQuery(1)}'
				+ "&searchType=" + '${cri.searchType}'
				+ "&keyword=" + encodeURIComponent($('#keywordInput').val());
		});
	});-->
</body>

