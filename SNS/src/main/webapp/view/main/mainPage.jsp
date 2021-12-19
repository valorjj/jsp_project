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
	<!-- 헤더 고정 -->
	<%@include file="../common/header.jsp"%>
	<!-- 메인시작 -->
	<div class="wrap">
		<div class="container">
			<!-- 가로배치 -->
			<div class="row">
				<!-- 좌측컨텐츠 -->
				<div class="col-lg-8 col-md-12 col-sm-12 col-12 mainleft">
					<!-- 좌측컨텐츠 슬라이드박스 -->
					<div class="mainslidebox  my-2 d-flex align-items-center justify-content-center" style="height: 120px">
						<!-- 이너박스 시작 -->
						<div class="slideboxinner p-1 d-flex flex-row flex-nowrap bg-primary" style="overflow: hidden;">
							<!-- 반복페이지 시작 -->
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<!-- 무한반복 추가 -->
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<div class="columnbox d-flex flex-column justify-content-center align-items-center bg-danger mx-1" style="min-width: 80px; height: 100px">
								<div class="userimg border" style="height: 70%">
									<a href="">둥근이미지</a>
								</div>
								<div class="username border" style="height: 30%">
									<a href="">닉네임</a>
								</div>
							</div>
							<!-- 무한반복 종료 -->
						</div>
						<!-- 이너박스종료 -->
					</div>
					<!-- 좌측컨텐츠 컨텐츠박스 -->
					<div class="maincontentsbox border">
						<div class="contentsboxinner p-1 border">
							컨텐츠이너박스(무한추가)
							<div class="contents d-flex flex-column">
								<!-- 미드시작 -->
								<div class="contentmid">
									<!--  -->
									<!-- 반복 -->
									<div class="contentrepeat my-1 mb-2 border border-danger">
										<div id="imgboxid" class="imgbox slide border text-center" style="overflow: hidden;">
											<img src="../../img/main-contents/test1.jpg" alt="">
											<!-- 반복 추가 -->
										</div>
										<div class="d-flex justify-content-center align-items-center">
											<div class="d-flex" style="width: 15%">
												<div class="like likeicon align-self-center" style="width: 33%">
													<a href=""><img src="../../img/main-contents/heart.png" alt="" style="transform: scale(0.5)" /></a>
												</div>
												<div class="reply align-self-center" style="width: 33%">
													<a href=""><img src="../../img/main-contents/chat.png" alt="" style="transform: scale(0.6)" /></a>
												</div>
												<div class="shere align-self-center " style="width: 33%">
													<a href=""><img src="../../img/main-contents/shere.png" alt="" style="transform: scale(0.5)" /></a>
												</div>
											</div>
											<div class="align-self-center " style="width: 70%">
												<div class="slidedots text-center">슬라이드 닷</div>
											</div>
											<div class="cart text-right mr-2" style="width: 15%">
												<a href=""><img src="../../img/main-contents/cart.png" alt="" style="transform: scale(0.5)" /></a>
											</div>
										</div>
										<div class="contentbot p-2">
											<div class="">
												<span>
													<a href="">닉네임</a>
												</span>
												님 외 어려명이 좋아합니다
											</div>
											<div class="contenttitle">
												포스트 작성자 제목
												<span>
													<a href="">더보기 ()전체보기)</a>
												</span>
											</div>
											<div class="">
												<a href="" class="text-dark"><span>댓글 ㅇㅇ개</span> <span class="ml-2">모두 보기</span></a>
											</div>
											<div class="" style="font-size: 12px;">date기록</div>
											<div class="d-flex justify-content-arround align-items-center border" style="width: 100%; height: 30px;">
												<div class="align-self-center text-center" style="width: 10%">
													<a href="">임티</a>
												</div>
												<div class="align-self-center mx-2" style="width: 80%">
													<input class="" type="text" placeholder="댓글 달기..." style="width: 100%;">
												</div>
												<button class="btn btn-primary align-self-center" style="height: 30px; widows: 10%">게시</button>
											</div>
										</div>
									</div>
									<!-- 반복 <=2 -->
									
									<!-- 반복종료 <=2 -->
									<!--  -->
								</div>
								<!-- 미드종료 -->
							</div>
						</div>
					</div>
				</div>
				<!-- 우측컨텐츠 -->
				<div id="mainmycontents" class="col-4 mainright border main-danger d-flex flex-column align-items-start d-none d-xs-none d-sm-none d-md-none d-lg-block">
					<!-- 마이박스 -->
					<div class="mybox d-flex justify-content-arround align-items-center bg-danger" style="width: 100%; height: 5rem;">
						<div class="myboximg ml-2" style="width: 25%">
							<a href=""><img src="" alt="" class="" />동그란이미지</a>
						</div>
						<div class="myboxtext border d-flex flex-column justify-content-center" style="width: 25%; height: 100%;">
							<div class="">
								아이디 :
								<span></span>
							</div>
							<div class="">
								이름 :
								<span></span>
							</div>
						</div>
						<div class="change mr-2" style="text-align: right; width: 50%">
							<a class="text-primary" href="">전환(계정)</a>
						</div>
					</div>
					<!-- 마이박스 종료-->
					<!-- 팔로우박스 -->
					<div class="followbox border" style="width: 100%; height: auto;">
						<div class="followbox-tp d-flex justify-content-center align-items-center my-1" style="height: 2.5rem;">
							<div class="ml-2" style="width: 50%;">회원님을 위한 추천</div>
							<!-- 팔로우 모두보기 출력 -->
							<div class="text-primary mr-2" style="width: 50%; text-align: right;">
								<a href="">모두보기</a>
							</div>
						</div>
						<div class="followbox-mid my-1 p-1">
							<div class="recommendbox ">
								<div class="repeatbox d-flex justify-content-center align-items-center border my-1 ">
									<div class="ml-2" style="width: 25%">동그란이미지</div>
									<div class="d-flex flex-column justify-content-center align-items-start" style="width: 50%">
										<div class="row1">닉네임</div>
										<div class="row2" style="font-size: 10px;">ㅇㅇㅇ님이 팔로우합니다</div>
									</div>
									<div class="text-right mr-2" style="width: 25%">
										<a href="" class="">팔로우</a>
									</div>
								</div>
								<!-- 반복 추 ~ max5 -->
								<div class="repeatbox d-flex justify-content-center align-items-center border my-1 ">
									<div class="ml-2" style="width: 25%">동그란이미지</div>
									<div class="d-flex flex-column justify-content-center align-items-start" style="width: 50%">
										<div class="row1">닉네임</div>
										<div class="row2" style="font-size: 10px;">ㅇㅇㅇ님이 팔로우합니다</div>
									</div>
									<div class="text-right mr-2" style="width: 25%">
										<a href="" class="">팔로우</a>
									</div>
								</div>
								<!-- 반복 종료 -->
							</div>
						</div>
					</div>
					<!-- 팔로우종료 -->
					<!-- 메인페이지 풋 -->
					<div class="mainfoot">
						<div class="row footerrow d-flex justify-content-center align-items-center p-2" style="font-size: 0.5rem">
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
							<ul class="ml-2" style="width: 100%">
								<li style="text-align: left;">© 2021 INSTAGRAM FROM META</li>
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