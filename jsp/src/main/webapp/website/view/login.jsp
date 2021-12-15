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
		<div class="container ">
			<!-- 가로배치 -->
			<div class="row col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-warning d-flex justify-content-center gx-10">
				<!-- 좌측 -->
				<div class="left column col-md-5 mx-100 border border-danger ">
					<div class="carousel">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot1.jpg/aafd8c6b005d.jpg">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot2.jpg/2d9d7248af43.jpg">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot4.jpg/001bc33056c1.jpg">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot5.jpg/f5ae123ab1e2.jpg">
					</div>
				</div>
				<!-- 우측 -->
				<div id="loginright" class="right col-md-5 col-sm-10 col-8 mx-100 border border-danger d-flex flex-column justify-content-center align-items-center">
					<div class="loginbox bg-info p-2 text-center" style="width: 80%">
						<div class="logo text-center">
							<a href=""> <img class="logo-img img-fluid" style="width: 200px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
						</div>
						<form class="" action="" >
							<input class="form-control my-3" type="text" placeholder=" 전화번호 사용자 이름 또는 이메일"> <input class="form-control my-3" type="password" placeholder=" 비밀번호">
							<button class="btn-primary col-12 " type="button" style="cursor: pointer;">로그인</button>
							<div class="searchpassword text-center text-center my-3">
								<a href="">비밀번호를 잊으셧나요?</a>
							</div>
						</form>
					</div>
					<div class="signbox bg-info my-3 p-2 text-center" style="width: 80%">
						계정이 없으신가요?<a href="./signup.jsp">가입하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 회원가입 핸드폰 자동 슬라이드 -->
	<script type="text/javascript">
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("sliderimage");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 5000);
		}
	</script>
</body>
</html>