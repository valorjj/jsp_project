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
		<div class="row col-12 d-flex justify-content-between align-items-center border-bottom bg-info" style="height: 60px; width: 100%">
			<div class="logo border align-self-center col-3 col-sm-3 col-xs-3 col-md-2 ">
				<a href="../main/mainPage.jsp"> 
					<img class="logo-img" style="width: 5rem;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png">
				</a>
			</div>
			<div id="searchbox" class="searchbar d-flex justify-content-center col-1 col-md-6 d-none d-xs-none d-sm-none d-md-block d-lg-block"
				style="width: 40%">
				<input class="search-bar border rounded text-center outline-none mr-1" type="search" placeholder="Search" style="width: 90%"> 
				<a href="">
					<i class="fa fa-search" style="color: black !important;"></i>
				</a>
			</div>
			<div class="navalign-self-center col-6 col-sm-6 col-xs-6 col-md-4" style="position: relative;">
				<ul class="navicon d-flex justify-content-center"
					style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); height: 60px;">
					<li class="home mx-1 align-self-center" style="width: 16px;">
						<a href="../main/mainPage.jsp">
							<i class="bi bi-house-door-fill" style="width: 20px; height: 20px;"></i> 
						</a>
					</li>
					<li class="message mx-1 align-self-center">
						<a href="">
							<i class="bi bi-send" style="width: 20px; height: 20px;"></i> 
						</a>
					</li>
					<li class="post mx-1 align-self-center">
						<a href="../post/createPost.jsp"> 
							<i class="bi bi-plus-square" style="width: 20px; height: 20px;"></i>
						</a>
					</li>
					<li class="news mx-1 align-self-center">
						<a href="">
							<i class="bi bi-compass" style="width: 20px; height: 20px;"></i>
						</a>
					</li>
					<li class="notice mx-1 align-self-center">
						<a href="" style="width: 20px; height: 20px;">
							<i class="bi bi-suit-heart"></i>
						</a>
					</li>
					<li class="myinfo mx-1 align-self-center">
						<a href="">
							<i class="bi bi-person-circle" style="width: 20px; height: 20px;"></i>
						</a>
					</li>
					<!-- 로그아웃 -->
					<li class="myinfo mx-1 align-self-center">
						<a href="../../view/user/loginPage.jsp">
							<i class="bi bi-gear-wide-connected" style="width: 20px; height: 20px;"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 헤더 컨테이너 종료 -->
	
</body>
</html>