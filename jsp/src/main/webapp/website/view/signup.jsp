<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="./common.jsp"%>
	<div class="wrap">
		<div class="container">
			<!-- 가로배치 -->
			<div class="row col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-warning d-flex justify-content-center gx-10">
				<div class="signup d-flex flex-column justify-content-center align-items-center border border-danger">
					<div class="logo text-center">
						<a href=""> <img class="logo-img img-fluid" style="width: 200px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
					</div>
					<div class="text-center">
						친구들의 사진과 동영상을 보려면 <br />가입하세요
					</div>
					<form class="" action="" style="width: 20rem">
						<input class="form-control my-3" type="text" placeholder=" 휴대폰 번호 또는 이메일주소">
						<input class="form-control my-3" type="text" placeholder=" 성명">
						<input class="form-control my-3" type="text" placeholder=" 사용자 이름">
						<input class="form-control my-3" type="password" placeholder=" 비밀번호">
						<button class="btn-primary col-12 " type="button" style="cursor: pointer;">가입</button>
					</form>
					<div class="loginbox bg-info my-3 p-2 text-center" style="width: 20rem">
						계정이 있으신가요?<a href="./login.jsp">로그인</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>