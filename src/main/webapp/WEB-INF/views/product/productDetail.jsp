<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/product/product.css">
	<style>
		body {
    background-color: #ecedee
}

.card {
    border: none;
    overflow: hidden
}

.thumbnail_images ul {
    list-style: none;
    justify-content: center;
    display: flex;
    align-items: center;
    margin-top: 10px
}

.thumbnail_images ul li {
    margin: 5px;
    padding: 10px;
    border: 2px solid #eee;
    cursor: pointer;
    transition: all 0.5s
}

.thumbnail_images ul li:hover {
    border: 2px solid #000
}

.main_image {
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom: 1px solid #eee;
    height: 400px;
    width: 100%;
    overflow: hidden;
    margin-top : 5%;
}

.heart {
    height: 29px;
    width: 29px;
    background-color: #eaeaea;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center
}

.content p {
    font-size: 12px
}

.ratings span {
    font-size: 14px;
    margin-left: 12px
}

.colors {
    margin-top: 5px
}

.colors ul {
    list-style: none;
    display: flex;
    padding-left: 0px
}

.colors ul li {
    height: 20px;
    width: 20px;
    display: flex;
    border-radius: 50%;
    margin-right: 10px;
    cursor: pointer
}

.colors ul li:nth-child(1) {
    background-color: #6c704d
}

.colors ul li:nth-child(2) {
    background-color: #96918b
}

.colors ul li:nth-child(3) {
    background-color: #68778e
}

.colors ul li:nth-child(4) {
    background-color: #263f55
}

.colors ul li:nth-child(5) {
    background-color: black
}

.right-side {
    position: relative
}
.buttons .btn {
    height: 50px;
    width: 150px;
    border-radius: 0px !important
}
	</style>
</head>
<body>

<div class="container mt-5 mb-5">
    <div class="card">
        <div class="row g-0">
            <div class="col-md-6 border-end">
                <div class="d-flex flex-column justify-content-center">
                    <div class="main_image"> <img src="/test/upload/${imageList[0].pdu_detail_code_ref}/${imageList[0].pdu_image_file_name}" id="main_product_image" width="350"> </div>
                    <div class="thumbnail_images">
                        <ul id="thumbnail">
                        	<c:forEach items="${imageList}" var = "imageList">
                            	<li><img onclick="changeImage(this)" src="/test/upload/${imageList.pdu_detail_code_ref}/${imageList.pdu_image_file_name}" width="70"></li>
                            </c:forEach>
                        </ul>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="p-3 right-side">
                    <div class="d-flex justify-content-between align-items-center">
                        <h2>${productVO.pdu_name}</h2> <span class="heart"><i class='bx bx-heart'></i></span>
                    </div>
                    <hr>
                   	<div class="price">
	                	<span>
	                		<fmt:formatNumber value="${productVO.pdu_price }" pattern="#,###" />원
	                	</span>     
	                	<fmt:formatNumber value="${productVO.pdu_discounted_price }" pattern="#,###" />원
	                </div>
					<div class="mt-2 pr-3 content">
                        상품정보 : <p>${productVO.pdu_content }</p>
                    </div>
                    <div class="ratings d-flex flex-row align-items-center">
                        <span></span>
                    </div>
                    <div class="mt-5"> <span class="fw-bold">Color</span>
                        <div class="colors">
                            <ul id="marker">
                                <li id="marker-1"></li>
                                <li id="marker-2"></li>
                                <li id="marker-3"></li>
                                <li id="marker-4"></li>
                                <li id="marker-5"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="buttons d-flex flex-row mt-5 gap-3"> <button class="btn btn-outline-dark">Buy Now</button> <button class="btn btn-dark">Add to Basket</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>




<script>
	//썸네일 클릭시 이미지 출력
	function changeImage(element) {
		var main_prodcut_image = document.getElementById('main_product_image');
		main_prodcut_image.src = element.src;
}
</script>


</body>
