<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/product/product.css">

<!-- 수량 버튼 css, js -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
<!-- 수량 버튼 css, js end-->

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
                    <span class="fw-bold ">가격</span>
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
								<option value="No_Value">사이즈를 선택해주세요.</option>
								<c:forEach items="${SizeColor}" var="size">
										<option value="${size.pdu_size_name}">Size ${size.pdu_size_name}</option>
								</c:forEach>
							</select>
						</div>
                    </div>
                    <div class="mt-5"> <span class="fw-bold">Color</span>
                        <div class="colors">
							<select class="" id ="color" name="color">
								<option value="No_Value">사이즈를 먼저 선택 해주세요.</option>
							</select>
                        </div>
                    </div>
                    
                   <div class="mt-5">
                     <div class="mb-2"><span class="fw-bold ">상품 수량</span></div>
                        <div class="col-sm-4 col-sm-offset-4">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <button class="btn btn-dark btn-md" id="minus-btn"><i class="fa fa-minus"></i></button>
                                </div>
                                <input type="number" name="quantity" id="qty_input" class="form-control form-control-md" value="1" min="1">
                                <div class="input-group-prepend">
                                    <button class="btn btn-dark btn-md" id="plus-btn"><i class="fa fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4"></div>
                	</div>
                    <div class="buttons d-flex flex-row mt-5 gap-3"> 
                    	<button class="btn btn-outline-dark" onclick="Submit('장바구니')">장바 구니 담기</button> 
                    	<button class="btn btn-dark" onclick="Submit('바로구매')">바로 구매</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<c:forEach items="${imageList}" var = "imageList">
		<div class="d-flex justify-content-center mt-5 mb-5">
			<img src="/test/upload/${imageList.pdu_detail_code_ref}/${imageList.pdu_image_file_name}">
		</div>
	</c:forEach>





<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	//썸네일 클릭시 이미지 출력
	function changeImage(element) {
		let main_prodcut_image = document.getElementById('main_product_image');
		main_prodcut_image.src = element.src;
	}
	

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
					  console.log(data);
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

	//수량 +- 이펙트 처리
	$(function(){
	    $('#qty_input').prop('disabled', true);
	    $('#plus-btn').click(function(){
	    	$('#qty_input').val(parseInt($('#qty_input').val()) + 1 );
   	    });
	    
	    $('#minus-btn').click(function(){
	    	$('#qty_input').val(parseInt($('#qty_input').val()) - 1 );
	    	if ($('#qty_input').val() == 0) {
				$('#qty_input').val(1);
			}
			console.log($('#qty_input').val());
	    });
	       
	 });
	
	//Submit
	function Submit(select){
		const pdu_detail_code_ref = ${productVO.pdu_detail_code}; 
		const size = $('#size').val();
		const color = $('#color').val();
		const quantity = $('#qty_input').val();
		if(size == "No_Value"){
			alert('사이즈를 선택해주세요');
		}
		
		$.ajax({
			type : 'POST',
			dataType : 'text',
			url  : '/cart/addToCart.do',
			data : {
				cart_pdu_detail_code_ref : pdu_detail_code_ref,
				cart_pdu_size : size,
				cart_pdu_color : color,
				cart_pdu_quantity : quantity
			},
			success: function(){
				
			},
			
			error : function(error) {
				console.log(error);
			}
				
		});
		
	}
		
</script>

</body>
