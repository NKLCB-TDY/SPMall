<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <head>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/admin/newPrsInsert.css">
</head>
<form action="${pageContext.request.contextPath}/admin/newPrsInsert.do" method="POST">
	<div align="center">
		<h1 class="h3 mb-1 text-gray-800">상품등록</h1>
		<div class="row">
			<div class="col-lg-3"></div>
			<div class="col-lg-3">
				<!-- Background Gradient Utilities -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">상품 카테고리</h6>
					</div>
	
					<select class="category1"  name="category1">
						<option value="">전체</option>
					</select>
						
					
				</div>
	
			</div>
			<div class="col-lg-3">
	
				<!-- Background Gradient Utilities -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">세부 카테고리</h6>
					</div>
					
					<select class="category2"  name="category2">
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
				<input type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="상품이름"> <small
					id="emailHelp" class="form-text text-muted"></small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 가격</h6>
				</div>
				<input type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="상품 가격"> <small
					id="emailHelp" class="form-text text-muted"></small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 할인금액</h6>
				</div>
				<input type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품내용</h6>
				</div>
				<textarea class="form-control" rows="15" cols=""></textarea>
				
			</div>
					
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 사이즈</h6>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-danger">----</button>
					<button type="button"
						class="btn btn-danger dropdown-toggle dropdown-toggle-split"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Separated link</a>
					</div>
				</div>
			</div>
					
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 색</h6>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-danger">----</button>
					<button type="button"
						class="btn btn-danger dropdown-toggle dropdown-toggle-split"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Separated link</a>
					</div>
				</div>
			</div>
					
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">상품 수량</h6>
				</div>
				<input type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			
			<div class="card shadow mb-4">
				<div class="card-header py-2">
					<h6 class="m-0 font-weight-bold text-primary">신재품 여부</h6>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-danger">----</button>
					<button type="button"
						class="btn btn-danger dropdown-toggle dropdown-toggle-split"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Separated link</a>
					</div>
				</div>
			</div>
			<div class="card shadow mb-4">
						<div class="card-header py-2">
						<h6 class="m-0 font-weight-bold text-primary">사진 선택</h6>
					</div>
					<div class="fileDrop"> </div>
					<div class="uploadedList"></div>
				
	
			</div>
			
		</div>
		<button type="submit" class="btn btn-success">등록 하기</button>
	</div>
</form>
<!-- 파일업로드를 위한 js -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script>
		$(".fileDrop").on("dragenter dragover", function(event){ 
			event.preventDefault();
		});
		
		$(".fileDrop").on("drop", function(event){
			event.preventDefault();
			
			var files = event.originalEvent.dataTransfer.files;
			var file = files[0];
			
			var formData = new FormData();
			formData.append("file",file);
			
			
			$.ajax({
				url: '/uploadAjax',
				data: formData,
				dataType :'text',
				processData: false,
				contentType: false,
				type: 'POST',
				success: function(data){
					alert(data);	
				}
			});
		});
		
		
		
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
		var cate1Select = $("select.category1");
		
		
		for(var i = 0; i < cate1Arr.length; i++) {
		
		 cate1Select.append("<option value='" + cate1Arr[i].category_code + "'>"
		      + cate1Arr[i].category_name + "</option>"); 
		}
		
		//2차
		$(document).on("change", "select.category1", function(){
			
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
			 
			 var cate2Select = $("select.category2");

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