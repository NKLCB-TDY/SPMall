<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<!-- bootstrap4 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!-- jquery 최신버전사용하기 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 주소처리 js -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 회원가입 유효성검사 .js  -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/member/memberupdateform.js"></script>
</head>

<body>
	
	<form method="post" name="updateform">
		<div class="container">
			<div class="row">
				<div class="col-md-12 mb-5 mb-md-0">
					<center>
						<h2 class="h3 mb-3 text-black">회원 정보 수정</h2>
					</center>
					<br> <br>
					<div style="border: 1px solid #AAAAAA; border-radius: 30px 30px"
						class="p-3 p-lg-5">
						<!--아이디-->
						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">아이디</label> <input
									type="text" class="form-control" id="member_id"
									name="member_id" readonly="readonly">
								<div id="id_check"></div>
							</div>
						</div>


						<!--휴대전화-->
						<div class="form-group row">
							<div class="col-md-4">
								<div>
									<input type="hidden" name = "member_phone" id = "member_phone">
								</div>
								<div class="form-group">
									<label for="c_country" class="text-black">휴대전화</label> <select
										id="member_cp1" class="form-control">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<label for="c_fname" class="text-black"><br></label> <input
									type="text" class="form-control"  size="4"
									maxlength="4" id="member_cp2"
									onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"
									style='IME-MODE: disabled;'>
							</div>
							<div class="col-md-4">
								<label for="c_fname" class="text-black"><br></label> <input
									type="text" class="form-control" size="4"
									maxlength="4" id="member_cp3"
									onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"
									style='IME-MODE: disabled;'>
							</div>
						</div>

						<!--이메일-->
						<div class="form-group row">
							<div class="col-md-4">
								<label for="c_country" class="text-black">이메일 
								</label> <input type="text" class="form-control" id="member_email1"
									name="member_email1" size="6">
							</div>

							<div class="col-md-4">
								<label for="c_country" class="text-black"><br></label> <input
									type="text" class="form-control" id="_email2" size="6"
									disabled="disabled" value="naver.com"> <input type="hidden"
									name="member_email2" id="member_email2" value="naver.com">
							</div>


							<div class="col-md-4">
								<div class="form-group">
									<label for="c_fname" class="text-black"><br></label> 
									<select
										id="email_select" class="form-control" >
										<option value="naver.com" selected>naver.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="nate.com">nate.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="daum.net">daum.net</option>
										<option value="direct">직접입력</option>
									</select>
								</div>
							</div>
						</div>

						<!--주소-->
						<div class="form-group row">
							<div class="col-md-8">
								<label for="c_diff_address" class="text-black">주소</label> 
								<input type="text"
									class="form-control" name="member_addr1" id="postCode"
									placeholder="우편번호">
							</div>
							<div class="col-md-4">
								<label for="c_diff_address" class="text-black"><br></label>
								<input type="button" class="form-control" onclick="find_addr()"
									value="주소찾기">
							</div>
						</div>

						<div class="form-group">
							<input type="text" class="form-control" name="member_addr2"
								id="basicAddr" placeholder="기본주소">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="member_addr3"
								id="dongAddr" placeholder="동">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="member_addr4"
								id="detailAddr" placeholder="상세주소">
						</div>

						<br> <br> <br>



						<div class="form-group row">
							<div class="col-md-6">
								<input
									style="background-color: #3b5999; border: 1px solid #3b5999;"
									type="button" class="btn btn-primary btn-lg py-3 btn-block"
									value="정보 수정" id="updateform" onclick="Sub()">
							</div>
							<div class="col-md-6">
								<input
									style="background-color: #3b5999; border: 1px solid #3b5999;"
									type="button" class="btn btn-primary btn-lg py-3 btn-block"
									value="취소"
									onclick="location.href='${contextPath}/member/memberinfo.do'">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- </form> -->
		</div>
	</form>

</body>

</html>