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
	
	<!-- 회원가입 페이지 시작 -->
	<div class="wrap">
		<div class="container my-5">
			<!-- 가로배치 -->
			<div class="row col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-warning d-flex justify-content-center gx-10">
				<div id="signuppage" class="signup d-flex flex-column justify-content-center align-items-center border border-danger">
					<!-- 로고 가운데 -->
					<div class="logo text-center">
						<a href=""> <img class="logo-img img-fluid" style="width: 200px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
					</div>
					<!-- 가입 관련 텍스트 -->
					<div class="text-center">
						친구들의 사진과 동영상을 보려면 <br />가입하세요
					</div>
					<!-- 회원가입 폼양식 -->
					<form id="signupform" class="" action="" style="width: 20rem">
						<input id="id" class="form-control my-2" type="text" placeholder=" ID 입력">
						<input id="password" class="form-control my-2" type="password" placeholder=" 비밀번호 입력">
						<input id="passwordconfirm" class="form-control my-2" type="password" placeholder=" 비밀번호 확인">
						<input class="form-control my-2" type="email" placeholder=" 이메일주소 @포함">
						<input id="name" class="form-control my-2" type="text" placeholder=" 성명">
						<input id="birth" onchange="" type="date" name="birth" class="form-control">
						<div class="selectsex my-2">
							<label for="">성별 : </label>
							<span>
								<input type="radio" name="sex" value="man" id="sex1" onchange="">
								남
								<input type="radio" name="sex" value="woman" id="sex2" onchange="">
								여
							</span>
						</div>
						<input id="age" class="form-control my-2" type="number" placeholder=" 연령">
						<input type="text" id="phone" onchange="" name="phone" class="form-control my-2" placeholder="Phone : 000-0000-0000">
						<button class="btn-primary col-12 " type="button" style="cursor: pointer;">가입</button>
					</form>
					<div class="loginbox bg-info my-2 p-2 text-center" style="width: 20rem">
						계정이 있으신가요?<a href="./loginPage.jsp"><span class="text-white ml-1">로그인</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 회원가입 페이지 종료 -->
	
		<!-- 푸터 고정 -->
	<%@include file="../common/footer.jsp"%>
	
	
	<!-- 스크립트 -->
	<!-- 다음 주소 api js 호출 -->
	<script src="../../../js/user/signupApi.js" type="text/javascript"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>