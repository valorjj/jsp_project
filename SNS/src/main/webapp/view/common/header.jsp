<%@page import="dto.LogInData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/sns/css/post/post.css" rel="stylesheet">
</head>
<body>
	<%
	// 1. 로그인 정보를 세션에서 불러온다. 
	LogInData logInData = (LogInData) session.getAttribute("logIn");
	// 1.1 로그인 된 유저 id
	String user_id = logInData.getUser_id();
	// 1.2 로그인 된 유저 no
	int user_no = logInData.getUser_no();
	%>
	<!-- 스크립트/css/부트스트랩 호출 -->
	<%@include file="common.jsp"%>
	<!-- 헤더 컨테이너 시작 -->
	<div class="container">
		<!-- 가로배치 -->
		<div
			class="row col-12 d-flex justify-content-between align-items-center border-bottom bg-info"
			style="height: 60px; width: 100%">
			<div
				class="logo border align-self-center col-3 col-sm-3 col-xs-3 col-md-2 ">
				<a href=""> <img class="logo-img" style="width: 5rem;"
					src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
			</div>
			<div id="searchbox"
				class="searchbar d-flex justify-content-center col-1 col-md-7 d-none d-xs-none d-sm-none d-md-block d-lg-block"
				style="width: 40%">
				<input
					class="search-bar border rounded text-center outline-none mr-1"
					type="search" placeholder="Search" style="width: 90%"> <a
					href=""><i class="fa fa-search"
					style="color: black !important;"></i></a>
			</div>
			<div class="navalign-self-center col-6 col-sm-6 col-xs-6 col-md-3"
				style="position: relative;">
				<ul class="navicon d-flex justify-content-center"
					style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); height: 60px;">
					<li class="home mx-1 align-self-center" style="width: 16px;">
						<a href="../main/mainPage.jsp"> <i
							class="bi bi-house-door-fill" style="width: 20px; height: 20px;"></i>
					</a>
					</li>
					<li class="message mx-1 align-self-center"><a href=""> <i
							class="bi bi-send" style="width: 20px; height: 20px;"></i>
					</a></li>
					<li class="post mx-1 align-self-center"><a
						href="../post/createPost.jsp"> <i class="bi bi-plus-square"
							style="width: 20px; height: 20px;"></i>
					</a></li>
					<li class="news mx-1 align-self-center"><a href=""> <i
							class="bi bi-compass" style="width: 20px; height: 20px;"></i>
					</a></li>
					<li class="notice mx-1 align-self-center"><a href=""
						style="width: 20px; height: 20px;"> <i
							class="bi bi-suit-heart"></i>
					</a></li>
					<li class="myinfo mx-1 align-self-center"><a href=""> <i
							class="bi bi-person-circle" style="width: 20px; height: 20px;"></i>
					</a></li>
					<!-- 로그아웃 -->
					<li class="myinfo mx-1 align-self-center"><a
						href="../../view/user/loginPage.jsp"> <i
							class="bi bi-gear-wide-connected"
							style="width: 20px; height: 20px;"></i>
					</a></li>
				</ul>
			</div>
		</div>
		<!-- 드롭다운 -->
		<div class="col-12 dropdownmenuitem"
			style="width: 100%; height: auto; position: relative;">
			<ul class="col-6 rounded"
				style="width: 500px; position: absolute; top: 0; right: 1.5%; z-index: 1; background: rgba(158, 158, 158, 0.7);">
				<li><a href="#">
						<p class="border-bottom">이번주</p>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a> <span> ㅇㅇㅇ님이 회원님을
								팔로우 하기 시작했습니다. <span>ㅇ주</span>
							</span> <span>
								<button type="button" class="btn btn-outline-primary">팔로우</button>
							</span>
						</div>
				</a></li>
				<li><a href="#">
						<p class="border-bottom">이번달</p>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a> <span> ㅇㅇㅇ님이 회원님을
								팔로우 하기 시작했습니다. <span>ㅇ주</span>
							</span> <span>
								<button type="button" class="btn btn-outline-primary">팔로우</button>
							</span>
						</div>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a> <span> ㅇㅇㅇ님이 회원님을
								팔로우 하기 시작했습니다. <span>ㅇ주</span>
							</span> <span>
								<button type="button" class="btn btn-outline-primary">팔로우</button>
							</span>
						</div>
				</a></li>
				<li><a href="#">
						<p class="border-bottom">이전활동</p>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a> <span> ㅇㅇㅇ님이 회원님을
								팔로우 하기 시작했습니다. <span>ㅇ주</span>
							</span> <span> <a href=""><img src="" alt="" />사진</a>
							</span>
						</div>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a> <span> ㅇㅇㅇ님이 회원님을
								회원님의 사진을 좋아합니다. <span>ㅇ주</span>
							</span> <span> <a href=""><img src="" alt="" />사진</a>
							</span>
						</div>
				</a></li>
			</ul>
		</div>
		<!-- 토글 숨김창 종료 -->
	</div>
	<!-- 헤더 컨테이너 종료 -->
	<!-- 알림 슬라이드 토글 -->
	<!-- <script type="text/javascript">
		$(".dropdownmenu").on("click", function(e) {
			e.preventDefault();
			$(".dropdownmenuitem").slideToggle("fast");
		});
	</script> -->
</body>
</html>