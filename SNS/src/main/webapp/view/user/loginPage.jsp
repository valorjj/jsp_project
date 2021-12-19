<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 스크립트/css/부트스트랩 호출 -->
	<%@include file="../common/common.jsp"%>
	<%
	// 로그인[세션]이 되어 있는경우
	if (login != null) {
		out.print("<script>alert('로그인이 되어있습니다.');</script>");
		out.println("<script>location.href='../main/mainPage.jsp';</script>");
	}
	%>
	<!-- 로그인페이지 시작 -->
	<div class="wrap" style="height: 100vh; position: relative;">
		<div class="container my-5 d-flex flex-column d-flex justify-content-center " style="height: 60vh">
			<!-- 가로배치 -->
			<div class="row loginbox col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-warning gx-10">
				<!-- 좌측 -->
				<div class="left column col-md-6 mx-100 border border-danger" style="transform: scale(0.8); height: 100%;">
					<div class="carousel">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot1.jpg/aafd8c6b005d.jpg">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot2.jpg/2d9d7248af43.jpg">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot4.jpg/001bc33056c1.jpg">
						<img class="sliderimage" src="https://www.instagram.com/static/images/homepage/screenshot5.jpg/f5ae123ab1e2.jpg">
					</div>
				</div>
				<!-- 우측 -->
				<div id="loginright" class="right col-md-6 col-sm-12 col-12 mx-100 border border-danger d-flex flex-column justify-content-center align-items-center" style="height: 100%;">
					<div class="loginbox bg-info p-2 text-center" style="width: 80%">
						<div class="logo text-center">
							<a href="#"> <img class="logo-img img-fluid" style="width: 200px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
						</div>
						<form class="d-flex flex-column bg-danger px-2" action="" style="width: 90%; margin: 0 auto;">
							<input name="id" class="form-control my-2" type="text" placeholder=" 아이디">
							<input name="password" class="form-control my-2" type="password" placeholder=" 비밀번호" style="font-family: '고딕체'">
							<!--  -->
							<%
							
							String result = request.getParameter("result");
							if (result != null) {
							%>
							<div>
								<span>회원정보가 올바르지 않습니다.</span>
							</div>
							<%
							}
							%>
							<!--  -->
							<button class="btn-primary col-12 my-2" type="button" style="cursor: pointer;">로그인</button>
							<div class="searchpassword text-center my-2">
								<a href="">비밀번호를 잊으셧나요?</a>
							</div>
							<div class="signbox bg-info my-1 p-2 text-center">
								계정이 없으신가요?<a href="./signUpPage.jsp"><span class="text-white ml-1">가입하기</span></a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- 로그인페이지 종료 -->
		<!-- 푸터 -->
		<div class="col-12" style="height: 20vh; position: absolute; bottom: 0">
			<%-- <%@include file="../common/footer.jsp"%> --%>
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