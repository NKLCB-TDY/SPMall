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
					<div class="mt-4"> <span class="fw-bold">상품정보</span>
                        <p>${productVO.pdu_content }</p>
                    </div>
                    <div class="mt-5"> <span class="fw-bold">Size</span>
                  		<div class="size">
                   			<select class="" id ="size" name="size">
								<option value="">사이즈를 선택해주세요.</option>
								<c:forEach items="${SizeColor}" var="size">
										<option value="${size.pdu_size_name}">Size ${size.pdu_size_name}</option>
								</c:forEach>
							</select>
						</div>
                    </div>
                    <div class="mt-5"> <span class="fw-bold">Color</span>
                        <div class="colors">
							<select class="" id ="color" name="color">
								<option value="">사이즈를 먼저선택하세요</option>
							</select>
                        </div>
                    </div>
                    <div class="buttons d-flex flex-row mt-5 gap-3"> <button class="btn btn-outline-dark">Buy Now</button> <button class="btn btn-dark">Add to Basket</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>





<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	//썸네일 클릭시 이미지 출력
	function changeImage(element) {
		let main_prodcut_image = document.getElementById('main_product_image');
		main_prodcut_image.src = element.src;
	}
	//수량 체크

	$(function(){
		//select
		$('#size').on('change',function(){
			var option;
			$("#color option").remove();
			let size = $('select[name=size]').val();
			console.log(size);
			//사이즈선택안될시
			if(!size){
				option = $("<option value="+">"+"사이즈를 먼저선택하세요"+"</option>");
				$('#color').append(option);
				return;
			}
			let pduDetailCode = ${productVO.pdu_detail_code};
			$.ajax({
				 type: 'POST',
				 dataType:'json',
				 url: '/product/selectColor', 
				 data: {
					  pdu_detail_code : pduDetailCode,
					  pdu_size_name : size
				  },
				  success: function(data){
					  
					  for(let i=0; i<data.length;i++){
						  option = $("<option value="+data[i].pdu_color_name+">"+data[i].pdu_color_name+"</option>");
						  $('#color').append(option);
					  }
				  },
					error : function(error) {
						console.log(error);
					}
				});	
		}); 
	});

</script>

</body>
