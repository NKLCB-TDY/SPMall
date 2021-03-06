<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<!-- 수량 버튼 css, js -->

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
<!-- 수량 버튼 css, js end-->
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet" href="/resources/css/cart/cart.css">

</head> 


<body>


<div class="container pt-5 ">
	<br>
	<h2 class="text-center">장바구니 리스트 </h2>
	<hr>
	<div style="text-align: center;">
	<div class="card" style="display: inline-block;">
	<table class="table table-hover shopping-cart-wrap">
		<thead class="text-muted">
			<tr>
			  <th scope="col" width="5%"><input type="checkbox" id="allSelect" onclick="AllSelect()"></th>
			  <th scope="col" width="30%">제품정보</th>
			  <th scope="col" width="10%">수량</th>
			  <th scope="col" width="15%">상품가격</th>
			  <th scope="col" width="10%">삭제하기</th>
			</tr>
		</thead>
	
		<tbody>
		
	<!-- 선언이유
		foreach와 같이 i 증감
		id, name 뒤에 붙어줌으로 독립적으로 사용하게함  -->
		<c:set var="i" value="0"/>
		<c:forEach items="${cartList}" var="cartVO">
			
			<tr>
				<td>
					
						<input type="checkbox" name="check_pdu" id="checkPdu${i}" 
							value="${cartVO.cart_code}" onclick="totalPriceChange(${cartVO.cart_code},this.checked)" 
							
							<c:if test="${cartVO.check_YN eq 'Y'}">
								checked="checked"
							</c:if>
						>
				</td>
					
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
			        <input style="width:20px;text-align:center" 
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
						<var class="price" id="price${i}">
							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###"
									 value="${cartVO.pdu_discounted_price * cartVO.cart_pdu_quantity}"/>원</var>
						<var class="perPrice" id="perPrice${i}">per : 
							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###"
									 value="${cartVO.pdu_discounted_price}"/>원</var>
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
	<div class="mt-5 ">
		<table class="table text-center">
		  <thead>
		    <tr class="table-secondary">
		      <th scope="col">총 상품가격</th>
		      <th scope="col">+</th>
		      <th scope="col">총 배송비</th>
		      <td scope="col">=</td>
		      <th scope="col">총 주문금액</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr class= "table-success">
		      <td scope="row">
		      	<span class="mr-2" id="total_Pdu_Price">0원</span>
		      </td>
		      <td scope="row">+</td>
		      <td scope="row">0</td>
		      <td scope="row">=</td>
		      <td scope="row">
		      	<span class="mr-2" id="total_Price" style="color: red;">0원</span>
		      </td>
		    </tr>
		  </tbody>
		</table>
	</div>
	<div class="d-flex justify-content-center mt-5">
		<button class="btn btn-danger btn-lg" onclick="Submit()">구매 하기</button>
	</div>
</div> 
<!--container end.//-->

<br><br>

</body>

<script type="text/javascript">

	
	var ret = 0;
	var val = $('#price1').text();
		console.log(val);
		console.log(parseInt($('#price1').text().replace(/,|원/gi,'')));
		ret = Number(val.replace(/','|'원',/gi,""));
		console.log(ret);
	
	//초기화	
	let total_price = 0;
	let allSelect =0;
	for(let i=0; i<${cartList.size()}; i++){
		if( $('#checkPdu'+i).is(':checked') ){
			total_price += removeCommasWon($('#price'+i).text());
			allSelect++;
		}else{
			allSelect--;
		}
	}
	
	if(allSelect == ${cartList.size()}){
		$('#allSelect').prop('checked',true); 
	}else{
		$('#allSelect').prop('checked',false);
	}
	$('#total_Pdu_Price').html(numberWithCommas(total_price));
	$('#total_Price').html(numberWithCommas(total_price));

		 
	//콤마 찍기
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'원';
	}

	//콤마, 원 제거
	function removeCommasWon(x){
		return parseInt(x.replace(/,|원/gi,''));
	}
	
	
	
	// 수량 증가(+) 버튼클릭시 이벤트
	// parmeter 값으로 inputId : 수량표시되는 id값, i : 증감값 가져옴
	function addQuantity(i){
		const quantity = parseInt($('#qty_input'+i).val()) + 1 ;
		$('#qty_input'+i).val(quantity); //input에 수량증가
		
		const cart_code = parseInt($('#checkPdu'+i).val());
		
		//수량 DB에 업데이트
		updateQuantity(quantity,cart_code);

		//수량 변경시 가격 변경
		let totalPrice = $('[name="pdu_discounted_price'+i+'"]').val() * $('[name="pdu_pieces'+i+'"]').val();
		
		$('#price'+i).html(numberWithCommas(totalPrice));
		
		totalPriceChange_quantity();
		
	};
	// 수량 빼기(-) 버튼클릭시 이벤트
	function subtractQuantity(i){
		const quantity = parseInt($('#qty_input'+i).val()) - 1 ;
		$('#qty_input'+i).val(quantity);
    	
    	if ($('#qty_input'+i).val() == 0) {
			$('#qty_input'+i).val(1);
			alert('수량은 최소 한개이상 입니다.');
		}else{
			const cart_code = parseInt($('#checkPdu'+i).val());
			
			//수량 DB에 업데이트
			updateQuantity(quantity,cart_code);
			
			//-시 가격처리
			let totalPrice = $('[name="pdu_discounted_price'+i+'"]').val() * $('[name="pdu_pieces'+i+'"]').val();
			$('#price'+i).html(numberWithCommas(totalPrice));
			totalPriceChange_quantity();
			
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
	
	//수량 버튼 클릭시 동작
	function totalPriceChange_quantity(){
		console.log("OKg");
		total_price= 0;
		
		for(let i=0; i<${cartList.size()}; i++){
			if( $('#checkPdu'+i).is(':checked') ){
				total_price += removeCommasWon($('#price'+i).text());
				console.log(total_price + "total_price");
			}
		}
		
		$('#total_Pdu_Price').html(numberWithCommas(total_price));
		$('#total_Price').html(numberWithCommas(total_price));
		console.log($('#total_Price').text() +"toto");
	}
	//checkbox 클릭, 수량수정, delete시 선택된 전체 가격대입
	function totalPriceChange(cart_code, check_YN){
		
		
		total_price= 0;
		allSelect =0;
		if(check_YN != null){
			if(check_YN == true){
				check_YN ='Y'
			}else check_YN ='N'
			console.log(cart_code + " " + check_YN);
			updateCheck(cart_code, check_YN);	
		}

		for(let i=0; i<${cartList.size()}; i++){
			if( $('#checkPdu'+i).is(':checked') ){
				total_price += removeCommasWon($('#price'+i).text());
				allSelect++;
			}else{
				allSelect--;
			}
		}
		
		if(allSelect == ${cartList.size()}){
			$('#allSelect').prop('checked',true); 
		}else{
			$('#allSelect').prop('checked',false);
		}
		
		$('#total_Pdu_Price').html(numberWithCommas(total_price));
		$('#total_Price').html(numberWithCommas(total_price));
		
	}

	function updateQuantity(quantity, cart_code){
		$.ajax({
			type: 'POST',
			dataType: 'text',
			url : '/cart/updateQuantity.do',
			data : {
				cart_pdu_quantity : quantity,
				cart_code : cart_code
			},
			success : function(){
				
			},
			
			error : function(error) {
				console.log(error);
			}
		});
	}
	
	function updateCheck(cart_code, check_YN){
		
		$.ajax({
			type: 'POST',
			dataType: 'text',
			url : '/cart/updateCheck.do',
			data : {
				cart_code : cart_code,
				check_YN : check_YN
			},
			success : function(){
				
			},
			
			error : function(error) {
				console.log(error);
			}
		});
	}
	function AllSelect(){
		const allSelect = $('#allSelect').is(":checked");
		if(allSelect == true){
			$('input[name=check_pdu]').prop('checked',true); 
		}else{
			total_price = 0; //체크모두 해제시 초기화
			$('input[name=check_pdu]').prop('checked',false);
		}
		
		for(let i=0; i<${cartList.size()}; i++){
			if( $('#checkPdu'+i).is(':checked') ){
				total_price += removeCommasWon($('#price'+i).text());

			}
		}
		
		$('#total_Pdu_Price').html(numberWithCommas(total_price));
		$('#total_Price').html(numberWithCommas(total_price));
	}
	

	// submit
	function Submit(){
		
		if(removeCommasWon($('#total_Price').text()) == 0){
			alert("선택된 상품이 없습니다.");
			return;
		}
		
		
		let checkList = new Array(); //check가된 상품코드를 담기위한 리스트
		for(let i=0; i<${cartList.size()} ; i++){
			
			//check 되있다면 push
			if($('#checkPdu'+i).is(':checked')){
				let cart_code = parseInt($('#checkPdu'+i).val());
				checkList.push(cart_code);
			}
			
		}
		
		location.href = '/order/checkout.do?cart_code='+checkList;
		
	}
</script>
