<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main/mainLogin.css">
	
<!-- front 단 link, -->
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
 <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body >
	<div class="container">
    	<div class="row">
			<div class="col-md-5 mx-auto">
			<div id="first">
				<div class="myform form ">
					 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h1>Login</h1>
						 </div>
					</div>
                   <form action="processlogin.do" method="POST" name="login">
                           <div class="form-group">
                              <label for="exampleInputEmail1">아이디 ID</label>
                              <input type="text" name="member_id"  class="form-control" placeholder="아이디를 입력해 주세요">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">패스워드 PW</label>
                              <input type="password" name="member_pwd" id="password"  class="form-control" placeholder="비밀번호를 입력해 주세요">
                           </div>
                           
                           <div class="col-md-12 text-center ">
                              <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                           </div>
					</form>                           
                           <div class="col-md-12 ">
                              <div class="login-or">
                                 <hr class="hr-or">
                                 <span class="span-or">or</span>
                              </div>
                           </div>
                           <div class="col-md-12 mb-3">
                              <p class="text-center">
                                 <a href="javascript:void();" class="google btn mybtn"><i class="fa fa-google-plus">
                                 </i> Signup using Google
                                 </a>
                              </p>
                           </div>
                           
                           <div class="form-group">
                              <p class="text-center">계정이 없으신가요? <a href="/member/memberJoin.do" id="signup">회원가입 하기</a></p>
                           </div>
				</div>
			</div>
			</div>
		</div>
      </div>
</body>
</html>