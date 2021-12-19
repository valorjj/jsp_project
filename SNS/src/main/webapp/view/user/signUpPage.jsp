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
	<div class="wrap" style="">
		<div class="container my-5" style="height: 80vh;">
			<!-- 가로배치 -->
			<div class="row col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-warning d-flex justify-content-center gx-10">
				<div id="signuppage" class="signup d-flex flex-column justify-content-center align-items-center border border-danger my-2">
					<!-- 로고 가운데 -->
					<div class="logo text-center my-2">
						<a href=""> <img class="logo-img img-fluid" style="width: 200px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
					</div>
					<!-- 가입 관련 텍스트 -->
					<div class="text-center">
						친구들의 사진과 동영상을 보려면 <br />가입하세요
					</div>
					<!-- 회원가입 폼양식 -->
					<form id="signupform" class=" px-1" method="post" action="../../controller/user/signUpController.jsp" style="width: 16rem" onsubmit="return signupcheck()">
						<input id="id" class="form-control my-2" type="text" placeholder=" 아이디 입력" name="id" onchange="signupcheck();">
						<div>
							<span id="idresult"></span>
						</div>
						<div>
							<input id="password" class="form-control my-2" type="password" placeholder=" 비밀번호 입력" name="password" onchange="signupcheck();" style="font-family: '고딕체'">
						</div>
						<div>
							<span id="pwresult"></span>
						</div>
						<input id="passwordconfirm" class="form-control my-2" type="password" placeholder=" 비밀번호 확인" name="passwordconfirm" onchange="signupcheck();" style="font-family: '고딕체'">
						<input id="email" class="form-control my-2" type="email" placeholder=" 이메일주소 (@포함)" name="email" onchange="signupcheck();">
						<input id="phone" type="text" id="phone" onchange="" name="phone" class="form-control my-2" placeholder="Phone : 000-0000-0000" name="phone" onchange="signupcheck();">
						<div>
							<span id="phoneresult"></span>
						</div>
						<input id="name" class="form-control my-2" type="text" placeholder=" 성명" name="name">
						<div>
							<span id="nameresult"></span>
						</div>
						<div class="selectsex my-2 d-flex justify-content-center">
							<div>
								<label for="" class="mr-2 mt-2">성별 :</label>
								<input id="sex1" type="radio" name="sex" value="man" id="sex1" onchange="signupcheck();">
								남
								<input id="sex2" type="radio" name="sex" value="woman" id="sex2" onchange="signupcheck();">
								여
							</div>
							<div class="ml-3">
								<label for="" class="mt-2"> 나이 선택 : </label>
								<select id="age" name="age" id="signup_age" class="form-select" style="font-size: 0.5rem; height: 75%;" onchange="signupcheck();">
									<%
									for (int i = 5; i <= 70; i++) {
									%>
									<option value="<%=i%>">
										<%=i%></option>
									<%
									}
									%>
								</select>
							</div>
							<br />
						</div>
						<div>
							<span id="sexresult" class="text-center"></span>
						</div>
						<button class="btn-primary col-12 pt-2 form-control" type="submit" style="cursor: pointer;">가입</button>
						<div class="loginbox bg-info my-3 pt-2 text-center">
							계정이 있으신가요?<a href="./loginPage.jsp"><span class="text-white ml-1">로그인</span></a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 회원가입 페이지 종료 -->
		<!-- 푸터 -->
		<div class="col-12" style="height: 20vh; position: absolute; bottom: 0">
<%-- 			<%@include file="../common/footer.jsp"%> --%>
		</div>
	</div>
	<!-- 다음 주소 api js 호출 -->
	<script src="../../../js/user/signUpApi.js" type="text/javascript"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>