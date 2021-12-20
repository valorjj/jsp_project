<%@page import="dto.LogInData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<div class="row col-12 d-flex justify-content-between align-items-center border-bottom bg-info" style="height: 60px; width: 100%">
			<div class="logo border align-self-center col-3 col-sm-3 col-xs-3 col-md-2 ">
				<a href=""> <img class="logo-img" style="width: 5rem;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
			</div>
			<div id="searchbox" class="searchbar d-flex justify-content-center col-1 col-md-7 d-none d-xs-none d-sm-none d-md-block d-lg-block" style="width: 40%">
				<input class="search-bar border rounded text-center outline-none mr-1" type="search" placeholder="Search" style="width: 90%">
				<a href=""><i class="fa fa-search" style="color: black !important;"></i></a>
			</div>
			<div class="navalign-self-center col-6 col-sm-6 col-xs-6 col-md-3" style="position: relative;">
				<ul class="navicon d-flex justify-content-center" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); height: 60px;">
					<li class="home mx-1 align-self-center" style="width: 16px;"><a href="../main/mainPage.jsp"><img src="../../img/home.png" alt="" style="width: 30px; height: 30px;" /> </a></li>
					<li class="message mx-1 align-self-center"><a href="../main/messagePage.jsp"><img src="../../img/message.png" alt="" style="width: 20px; height: 20px;" /> </a></li>
					<li class="post mx-1 align-self-center"><a href="" data-toggle="modal" data-target="#postModal"> <svg style="color: black !important;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
							  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
							  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" /> 
						  	</svg>
					</a></li>
					<li class="news mx-1 align-self-center"><a href="../main/randomFeedPage.jsp" class=" far fa-compass" style="color: black !important;"></a></li>
					<li class=" dropdownmenu notice mx-1 align-self-center"><a href="" class="dropdownmenubtn far fa-heart " style="color: black !important; position: relative;"></a> <!-- 토글 숨김창 --></li>
					<li class="myinfo mx-1 align-self-center"><a href="" class="far fa-user" style="color: black !important;"></a></li>
					<span>
						<a href="../../view/user/loginPage.jsp" style="font-size: 5px;">logout<br>(임시)
						</a>
					</span>
				</ul>
			</div>
		</div>
		<!-- 드롭다운 -->
		<div class="col-12 dropdownmenuitem" style="width: 100%; height: auto; position: relative;">
			<ul class="col-6 rounded" style="width: 500px; position: absolute; top: 0; right: 1.5%; z-index: 1; background: rgba(158, 158, 158, 0.7);">
				<li><a href="#">
						<p class="border-bottom">이번주</p>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a>
							<span>
								ㅇㅇㅇ님이 회원님을 팔로우 하기 시작했습니다.
								<span>ㅇ주</span>
							</span>
							<span>
								<button type="button" class="btn btn-outline-primary">팔로우</button>
							</span>
						</div>
				</a></li>
				<li><a href="#">
						<p class="border-bottom">이번달</p>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a>
							<span>
								ㅇㅇㅇ님이 회원님을 팔로우 하기 시작했습니다.
								<span>ㅇ주</span>
							</span>
							<span>
								<button type="button" class="btn btn-outline-primary">팔로우</button>
							</span>
						</div>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a>
							<span>
								ㅇㅇㅇ님이 회원님을 팔로우 하기 시작했습니다.
								<span>ㅇ주</span>
							</span>
							<span>
								<button type="button" class="btn btn-outline-primary">팔로우</button>
							</span>
						</div>
				</a></li>
				<li><a href="#">
						<p class="border-bottom">이전활동</p>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a>
							<span>
								ㅇㅇㅇ님이 회원님을 팔로우 하기 시작했습니다.
								<span>ㅇ주</span>
							</span>
							<span>
								<a href=""><img src="" alt="" />사진</a>
							</span>
						</div>
						<div class="d-flex justify-content-between ">
							<a href=""><img src="" alt="" /></a>
							<span>
								ㅇㅇㅇ님이 회원님을 회원님의 사진을 좋아합니다.
								<span>ㅇ주</span>
							</span>
							<span>
								<a href=""><img src="" alt="" />사진</a>
							</span>
						</div>
				</a></li>
			</ul>
		</div>
		<!-- 토글 숨김창 종료 -->
	</div>
	<!-- 헤더 컨테이너 종료 -->
	<!-- 알림 슬라이드 토글 -->
	<script type="text/javascript">
		$(".dropdownmenu").on("click", function(e) {
			e.preventDefault();
			$(".dropdownmenuitem").slideToggle("fast");
		});
	</script>
</body>
</html>