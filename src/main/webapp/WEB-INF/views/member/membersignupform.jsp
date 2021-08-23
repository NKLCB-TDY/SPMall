<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap4 -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<!-- jquery 최신버전사용하기 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 주소처리 js -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/member/member.js"></script>
</head>

<body>
	<form method="post" name="signupform">
		<div class="container">
			<div class="row">
				<div class="col-md-12 mb-5 mb-md-0">
					<center>
						<h2 class="h3 mb-3 text-black">회원가입</h2>
					</center>
					<br> <br>
					<div style="border: 1px solid #AAAAAA; border-radius: 30px 30px"
						class="p-3 p-lg-5">
						<!--아이디-->
						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">아이디</label> <input
									type="text" class="form-control" id="member_id"
									name="member_id">
								<div id="id_check"></div>
							</div>
						</div>

						<!--비밀번호-->
						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">비밀번호</label> <input
									type="password" class="form-control" id="member_pw1">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">비밀번호 확인</label> <input
									type="password" class="form-control" id="member_pw2"
									name="member_pwd">
								<div id="password_check" style="color: red;"></div>
							</div>
						</div>

						<!--이름-->
						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">이름</label> <input
									type="text" class="form-control" name="member_name"
									id="member_name">
							</div>
						</div>

						<label for="c_companyname" class="text-black">성별</label><br>
						<div class="form-group row">
							<div class="col-md-1">
								<label for="c_companyname" class="text-black">남성</label><br>
								<input type="radio" name="member_gender" value="남성"
									id="member_gender">
							</div>
							<div class="col-md-1">
								<label for="c_companyname" class="text-black">여성</label><br>
								<input type="radio" name="member_gender" value="여성"
									id="member_gender">
							</div>
						</div>

						<!--휴대전화-->
						<div class="form-group row">
							<div class="col-md-4">
								<div>
									<input type="hidden" name = "member_phone" id = "phone">
								</div>
								<div class="form-group">
									<label for="c_country" class="text-black">휴대전화</label> <select
										name="member_cp1" id="member_cp1" class="form-control">
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
									type="text" class="form-control" name="member_cp2" size="4"
									maxlength="4" id="member_cp2"
									onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"
									style='IME-MODE: disabled;'>
							</div>
							<div class="col-md-4">
								<label for="c_fname" class="text-black"><br></label> <input
									type="text" name="member_cp3" class="form-control" size="4"
									maxlength="4" id="member_cp3"
									onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"
									style='IME-MODE: disabled;'>
							</div>
						</div>

						<!--이메일-->
						<div class="form-group row">
							<div class="col-md-4">
								<label for="c_country" class="text-black">이메일 <span
									class="text-danger">*</span>
								</label> <input type="text" class="form-control" id="email1"
									name="member_email1" size="6">
							</div>

							<div class="col-md-4">
								<label for="c_country" class="text-black"><br></label> <input
									type="text" class="form-control" id="_email2" size="6"
									disabled="disabled"> <input type="hidden"
									name="member_email2" id="email2">
							</div>


							<div class="col-md-4">
								<div class="form-group">
									<label for="c_fname" class="text-black"><br></label> <select
										id="email_select" class="form-control">
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
								<label for="c_diff_address" class="text-black">주소<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" name="member_addr1" id="postaddr"
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
								id="basicaddr" placeholder="기본주소">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="member_addr3"
								id="dongaddr" placeholder="동">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="member_addr4"
								id="detailaddr" placeholder="상세주소">
						</div>

						<br> <br> <br>



						<div class="form-group row">
							<div class="col-md-6">
								<input
									style="background-color: #ff084e; border: 1px solid #ff084e;"
									type="button" class="btn btn-primary btn-lg py-3 btn-block"
									value="회원가입" id="joinMember" onclick="Sub()">
							</div>
							<div class="col-md-6">
								<input
									style="background-color: #ff084e; border: 1px solid #ff084e;"
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