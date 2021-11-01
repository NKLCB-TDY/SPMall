<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <head>
	<link rel="stylesheet" type="text/css" href="/resources/css/admin/newPrsInsert.css">
	
</head>


<form action="${pageContext.request.contextPath}/admin/newPrsInsert.do" 
	method="POST" enctype="multipart/form-data">
	<div align="center">
		<h1 class="h3 mb-1 text-gray-800">상품등록</h1>
		<hr>
		<div class="row">
			<div class="col-lg-3"></div>
			<div class="col-lg-3">
				
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">상품 카테고리</h6>
					</div>
	
					<select class="category_main" name="pdu_category_main">
						<option value="">전체</option>
					</select>
						
					
				</div>
	
			</div>
			<div class="col-lg-3">
	
				
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">세부 카테고리</h6>
					</div>
					
					<select class="category_sub"  name="pdu_category_code_ref">
						<option value="">전체</option>
					</select>
				</div>
	
			</div>
		</div>
		<div class="col-lg-3">
			<!-- Background Gradient Utilities -->
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 이름</h6>
				</div>
				<input type="text" class="form-control" name="pdu_name"
					  placeholder="상품이름"> <small
					id="emailHelp" class="form-text text-muted"></small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 가격</h6>
				</div>
				<input type="text" class="form-control" name="pdu_price" id="pdu_price"
					  placeholder="상품 가격"> <small
					id="emailHelp" class="form-text text-muted">숫자만 입력</small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 할인율</h6>
				</div>
				<input type="text" class="form-control" name="pdu_discount_rate" id="pdu_discount_rate"
					  placeholder="퍼센테이지"> <small
					id="show_discounted_price" class="form-text text-muted">10% 할인시 숫자 10</small>
				<input type="hidden" name="pdu_discounted_price" id="pdu_discounted_price">
					
			</div>
					
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 사이즈</h6>
				</div>
				<select name="pdu_size_name">
					<option>사이즈 선택</option>
					<option value="S">S</option>
					<option value="M">M</option>
					<option value="L">L</option>
					<option value="XL">XL</option>
					<option value="XXL">XXL</option>
					<option value="Free">Free</option>
				</select>
			</div>
					
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 색</h6>
				</div>
				<select name="pdu_color_name">
					<option value="" selected>색 선택</option>
					<option value="블랙">블랙</option>
					<option value="아이보리">아이보리</option>
					<option value="화이트">화이트</option>
					<option value="레드">레드</option>
					<option value="노랑">노랑</option>
					<option value="베이지">베이지</option>
					<option value="그린">그린</option>
					<option value="브라운">브라운</option>
					<option value="차콜">차콜</option>
					<option value="청색">진청색</option>
				</select>
			</div>
					
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 수량</h6>
				</div>
				<input type="text" class="form-control" name ="pdu_pieces"
					  placeholder="상품 수량"> <small
					id="emailHelp" class="form-text text-muted">숫자만 입력</small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품내용</h6>
				</div>
				<textarea class="form-control" rows="15" cols="" name="pdu_content"></textarea>
				
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 분류</h6>
				</div>
				<select name="pdu_classificate">
					<option value="신상품">신상품</option>
					<option value="일반">일반</option>
				</select>
				
			</div>
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">메인 이미지</h6>
				</div>
				<input type="file" value="메인 이미지 등록" id="main" name="main_image"  
				onchange="readURL(this,this.id);" />
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">서브 이미지</h6>
				</div>
				<input type="button" value="서브 이미지 추가" onClick="add_imgFile()" />
				<div id="sub_list"></div>
			</div>
		</div>	
		
		<div class="box-footer">
			<div>
				<hr>
				<h3>이미지 출력</h3>
			</div>
			
			<div id="image_list">
				<img id="preview" src="#" width=200 height=200 />	
			</div>
		</div>

	</div>
	
	<hr>
	<div class="d-flex justify-content-center">
		<button type="submit" class="btn btn-primary ">등록 하기</button>
	</div>
</form>

<!-- 파일업로드, 카테고리 처리를 위한 js -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/resources/js/admin/upload/upload.js"></script>

<script>
	$(function () {
		$("#pdu_discount_rate").blur(function(){
			// primePrice == 원가
			let primePrice = $("#pdu_price").val();
			let discountRate =  $("#pdu_discount_rate").val();
			
			console.log(primePrice);
			// discounted_price == 할인된가격
			let discounted_price = primePrice - (primePrice/100 * discountRate);
			console.log(discounted_price);
			$("#pdu_discounted_price").val(discounted_price);
			
			//할인가 보여주기
			let show_discounted_price = document.getElementById("show_discounted_price");
			
			show_discounted_price.innerText = "할인된 가격 : "+discounted_price+" 원";
			
		});
	});
	
	function readURL(input,id) {
		 if (input.files && input.files[0]) {
		  var reader = new FileReader();
		  reader.onload = function (e) {
			  if(id =='main'){
		   		$('#preview').attr('src', e.target.result);  
			  }else{
				$("#preview"+id).attr('src', e.target.result);  
			  }
		}
		  
		  reader.readAsDataURL(input.files[0]);
		 }
	}

	let cnt =1;
	function add_imgFile(){
		$("#sub_list").append("<div id='subImg"+cnt+"'>서브이미지 "+cnt+" : <input type='file' name='sub_image"+cnt+"'id='"+cnt+
				"'onchange='readURL(this,this.id);' /><button type='button' onclick='removeSub("+cnt+")'>x</button></div>");
		$("#image_list").append("<img src='#' width=200 height=200 id='preview"+cnt+"'>");
		cnt++;
	}
	
	function removeSub(count){
		$('#subImg'+count).remove();
		$('#preview'+count).remove();
		cnt--;
	}
	/////// 상품 Category 처리 start
	
	// 컨트롤러에서 데이터 받기
	var jsonData = JSON.parse('${category}');
	console.log(jsonData);

	var cate1Arr = new Array();
	var cate1Obj = new Object();

	// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {

		if(jsonData[i].depth == "1") {
  		cate1Obj = new Object();  //초기화
  		cate1Obj.category_code = jsonData[i].category_code;
  		cate1Obj.category_name = jsonData[i].category_name;
  		cate1Arr.push(cate1Obj);
	 	}
	}

	// 1차 분류 셀렉트 박스에 데이터 삽입
	var cate1Select = $("select.category_main");
	
	
	for(var i = 0; i < cate1Arr.length; i++) {
	
	 cate1Select.append("<option value='" + cate1Arr[i].category_code + "'>"
	      + cate1Arr[i].category_name + "</option>"); 
	}
	
	//2차
	$(document).on("change", "select.category_main", function(){
		
		 var cate2Arr = new Array();
		 var cate2Obj = new Object();
		 
		 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
		 for(var i = 0; i < jsonData.length; i++) {
		  
		  if(jsonData[i].depth == "2") {
		   cate2Obj = new Object();  //초기화
		   cate2Obj.category_code = jsonData[i].category_code;
		   cate2Obj.category_name = jsonData[i].category_name;
		   cate2Obj.category_code_ref = jsonData[i].category_code_ref;
		   
		   cate2Arr.push(cate2Obj);
		  }
		 }
		 
		 var cate2Select = $("select.category_sub");

		 cate2Select.children().remove();
		 $("option:selected", this).each(function(){
		  
		  var selectVal = $(this).val();  
		  cate2Select.append("<option value=''>전체</option>");
		  
		  for(var i = 0; i < cate2Arr.length; i++) {
		   if(selectVal == cate2Arr[i].category_code_ref) {
		    cate2Select.append("<option value='" + cate2Arr[i].category_code + "'>"
		         + cate2Arr[i].category_name + "</option>");
		   }
		  }
		});  
	 });
	/////// 상품 Category 처리 end
</script>
<!-- 파일업로드를 위한 js end-->