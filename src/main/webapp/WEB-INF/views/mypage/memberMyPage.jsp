<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.image {
	cursor: pointer;
}
.menu:hover {
  background-color: #FDF5DE;
  cursor: pointer;
}
</style>
</head>
<body>
	<section class="py-5">
		<div class="container px-2 px-lg-2">
			<div class="row justify-content-center mt-5">
				<div class="menu col-4 p-3 d-flex justify-content-center" >

					<!-- Product image-->
					<img
						src="${pageContext.request.contextPath}/resources/image/mypage/1.JPG"
						onclick="location.href='/member/memberUpdate.do'" class="mw-100" alt="...">

				</div>
				<div class="menu col-4 p-3 d-flex justify-content-center">

					<!-- Product image-->
					<img
						src="${pageContext.request.contextPath}/resources/image/mypage/2.JPG"
						onclick="location.href='/cart/cartView.do'" class="mw-100"
						alt="...">


				</div>
				<div class="menu col-4 p-3 d-flex justify-content-center">

					<!-- Product image-->
					<img
						src="${pageContext.request.contextPath}/resources/image/mypage/3.JPG"
						onclick="location.href='/order/list.do'" class="mw-100"
						alt="...">


				</div>
				
			</div>
			
			<div class="row justify-content-center mt-5">
				<div class="menu col-4 p-3 d-flex justify-content-center">

					<!-- Product image-->
					<img
						src="${pageContext.request.contextPath}/resources/image/mypage/4.JPG"
						onclick="location.href='/cs/faq.do'" class="mw-100"
						alt="...">

				</div>
				<div class="col-4 p-3 d-flex justify-content-center">

					


				</div>
				<div class="col-4 p-3 d-flex justify-content-center">

					


				</div>
				
			</div>
		</div>
	</section>


</body>
</html>