<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- 수량 버튼 css, js -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
<!-- 수량 버튼 css, js end-->
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<style>
.param {
    margin-bottom: 7px;
    line-height: 1.4;
}
.param-inline dt {
    display: inline-block;
}
.param dt {
    margin: 0;
    margin-right: 7px;
    font-weight: 600;
}
.param-inline dd {
    vertical-align: baseline;
    display: inline-block;
}

.param dd {
    margin: 0;
    vertical-align: baseline;
} 

.shopping-cart-wrap .price {
    color: #007bff;
    font-size: 18px;
    font-weight: bold;
    display: block;
    text-align:center;
}
.shopping-cart-wrap .perPrice {
    color: 	#4169E1;
    font-size: 12px;
    font-weight: bold;
    display: block;
    text-align:center;
}
var {
    font-style: normal;
}

.media img {
    margin-right: 1rem;
}
.img-sm {
    width: 90px;
    max-height: 75px;
    object-fit: cover;
}
</style>
</head>
<body>


<div class="container pt-5">
	<br>
	<h2 class="text-center">장바구니 리스트 </h2>
	<hr>
	
	<div class="card">
	<table class="table table-hover shopping-cart-wrap">
		<thead class="text-muted">
			<tr>
			  <th scope="col" width="5%"><input type="checkbox"></th>
			  <th scope="col" width="40%">제품정보</th>
			  <th scope="col" width="10%" class="text-center">수량</th>
			  <th scope="col" width="10%" class="text-center">상품가격</th>
			  <th scope="col" width="20%" class="text-right pr-4">삭제하기</th>
			</tr>
		</thead>
	
		<tbody>
		
	<!-- 선언이유
		foreach와 같이 i 증감
		id, name 뒤에 붙어줌으로 독립적으로 사용하게함  -->
		<c:set var="i" value="0"/>
		<c:forEach items="${cartList}" var="cartVO">
	
			<tr>
				<td><input type="checkbox">	</td>
				<td>
					<figure class="media">	
						<div class="img-wrap">
							<img class="img-thumbnail"
									src="/test/upload/${cartVO.cart_pdu_detail_code_ref }/s_${cartVO.pdu_image_file_name}">
						</div>
						<figcaption class="media-body">
							<h6 class="title text-truncate">${cartVO.pdu_name }</h6>
							<dl class="param param-inline small">
					  			<dt>Size: </dt>
					  			<dd>${cartVO.cart_pdu_size }</dd>
							</dl>
							<dl class="param param-inline small">
					  			<dt>Color: </dt>
					  			<dd>${cartVO.cart_pdu_color }</dd>
							</dl>
						</figcaption>
					</figure> 
				</td>
				
				<td> 	
			    <div class="input-group mb-3">
			        <div class="input-group-prepend">
			            <button class="btn btn-dark btn-sm" id="minus-btn" onclick="subtractQuantity(${i})">
			            	<i class="fa fa-minus"></i>
			            </button>
			        </div>
			        
			        <!-- 수량 표시 disabled로 직접입력 막음 -->
			        <input style="width:50px" 
			        		type="number" 
			        		name="pdu_pieces${i}" 
			        		id="qty_input${i}" 
			        		class="form-control form-control-sm" 
			        		value="${cartVO.cart_pdu_quantity}"
			        		disabled="disabled">
			       	
			        <div class="input-group-prepend">
			            <button class="btn btn-dark btn-sm" id="plus-btn" onclick="addQuantity(${i})">
			            	<i class="fa fa-plus" ></i>
			            </button>
			        </div>
			    </div>
					
				</td>
				<td> 
					<div class="price-wrap"> 
						<var class="price" id="price${i}">${cartVO.pdu_discounted_price * cartVO.cart_pdu_quantity}</var>
						<var class="perPrice" id="perPrice${i}">per : ${cartVO.pdu_discounted_price}</var>
						<input type="hidden" name="pdu_discounted_price${i}" value="${cartVO.pdu_discounted_price }"> 
					</div> <!-- price-wrap .// -->
				</td>
				<td class="text-right"> 
					 
					<a href="javascript:Remove(${i});" class="btn btn-outline-danger btn-round"> × Remove</a>
				</td>
			</tr>
		
		
		<c:set var="i" value="${i+1}"/>
		</c:forEach>
	
		</tbody>
	</table>
	</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>

</body>

<script>
	
	
	// 수량 증가(+) 버튼클릭시 이벤트
	// parmeter 값으로 inputId : 수량표시되는 id값, i : 증감값 가져옴
	function addQuantity(i){
		$('#qty_input'+i).val(parseInt($('#qty_input'+i).val()) + 1 );
		
		//수량 변경시 가격 변경
		let totalPrice = $('[name="pdu_discounted_price'+i+'"]').val() * $('[name="pdu_pieces'+i+'"]').val();

		document.getElementById("price"+i).innerHTML = totalPrice;
		 
		console.log(totalPrice);
		console.log($('#qty_input'+i).val());
	};
	// 수량 빼기(-) 버튼클릭시 이벤트
	function subtractQuantity(i){
    	$('#qty_input'+i).val(parseInt($('#qty_input'+i).val()) - 1 );
    	
    	if ($('#qty_input'+i).val() == 0) {
			$('#qty_input'+i).val(1);
			alert('수량은 최소 한개이상 입니다.');
		}else{
			//-시 가격처리
			let totalPrice = $('[name="pdu_discounted_price'+i+'"]').val() * $('[name="pdu_pieces'+i+'"]').val();
			
			document.getElementById("price"+i).innerHTML = totalPrice;
			
			console.log("한개 가격은" + $('[name="pdu_discounted_price'+i+'"]').val());
			console.log(totalPrice);
		}
		
		 
	};
	
	//장바구니 품목 삭제 Remove
	function Remove(offsetN){
		
			$.ajax({
				type : 'POST',
				dataType : 'text',
				url  : '/cart/removeCart.do',
				data : {
					offsetNum : offsetN
				},
				success: function(){
					alert("삭제완료");
					location.href='/cart/cartView.do';
				},
				
				error : function(error) {
					console.log(error);
				}
					
			});
	}	
	
		
		
		
</script>
