<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    margin-right: 5px;
    display: block;
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
<br>  <h2 class="text-center">장바구니 리스트 </h2>
<hr>



<div class="card">
<table class="table table-hover shopping-cart-wrap">
<thead class="text-muted">
<tr>
  <th scope="col" width="20">Check</th>
  <th scope="col">Product</th>
  <th scope="col" width="120">Quantity</th>
  <th scope="col" width="120">Price</th>
  <th scope="col" width="200" class="text-right">Action</th>
</tr>
</thead>
<tbody>

<tr>
	<td><input type="checkbox">	</td>
	<td>
		<figure class="media">
	
			<div class="img-wrap"><img src="/test/upload/1/s_test1.JPG" class="img-thumbnail img-sm"></div>
			<figcaption class="media-body">
				<h6 class="title text-truncate">Product name goes here </h6>
				<dl class="param param-inline small">
		  			<dt>Size: </dt>
		  			<dd>XXL</dd>
				</dl>
				<dl class="param param-inline small">
		  			<dt>Color: </dt>
		  			<dd>Orange color</dd>
				</dl>
			</figcaption>
		</figure> 
	</td>
	<td> 	
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <button class="btn btn-dark btn-sm" id="minus-btn"><i class="fa fa-minus"></i></button>
        </div>
        <input type="number" name="pdu_pieces" id="qty_input" class="form-control form-control-sm" value="1" min="1">
        <div class="input-group-prepend">
            <button class="btn btn-dark btn-sm" id="plus-btn"><i class="fa fa-plus"></i></button>
        </div>
    </div>
		
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">14,000 원</var> 

		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
		 
		<a href="" class="btn btn-outline-danger btn-round"> × Remove</a>
	</td>
</tr>
</tbody>
</table>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>

</body>

<script>
	//수량 +- 처리
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
	
	    	    });
	 });
</script>
