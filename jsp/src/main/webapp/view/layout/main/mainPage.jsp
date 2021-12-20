<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 고정 -->
	<%@include file="../common/header.jsp"%>
	<!-- 스크립트/css/부트스트랩 호출 -->
	<%@include file="../common/common.jsp"%>
	
	<!-- 메인시작 -->
	<div class="wrap">
		<div class="container">
			<!-- 가로배치 -->
			<div class="row">
				<!-- 좌측컨텐츠 -->
				<div class="col-7 mainleft border bg-info">
					<div class="mainslide">슬라이드</div>
					<div class="maincontents">포스팅박스</div>
				</div>
				<!-- 우측컨텐츠 -->
				<div id="mainmycontents" class="col-5 mainright border main-danger d-flex flex-column align-items-start">
					<div class="mybox d-flex justify-content-arround" style="width: 100%">
						<div class="myboximg align-self-center" style="width: 25%">
							<a href=""><img src="" alt="" />동그란이미지</a>
						</div>
						<div class="myboxtext align-self-center" style="width: 25%">
							<p>아이디</p>
							<p>이름</p>
						</div>
						<div class="change align-self-center mr-2" style="text-align: right; width: 50%">전환(계정)</div>
					</div>
					<div class="followbox" style="width: 100%">
						<div class="followbox-tp d-flex">
							<p class="align-self-center" style="width: 50%">회원님을 위한 추천</p>
							<p class="align-self-center mr-2" style="text-align: right; width: 50%">
								<a href="">모두보기</a>
							</p>
						</div>
						<div class="followbox-mid"></div>
					</div>
					<div class="mainfoot">
						<div class="row footerrow d-flex justify-content-center align-items-center" style="font-size: 0.5rem">
							<ul class="d-flex justify-content-center flex-wrap">
								<li>Meta</li>
								<li>소개</li>
								<li>블로그</li>
								<li>채용 정보</li>
								<li>도움말</li>
								<li>API</li>
								<li>개인정보처리 방침</li>
								<li>약관</li>
								<li>인기 계정</li>
								<li>해시태그</li>
								<li>위치</li>
								<li>Instagram Lite</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 메인 컨테이너 종료 -->
</body>
</html>