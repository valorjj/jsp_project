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
				<a href=""> <img class="logo-img" style="width: 5rem;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
			</div>
			<div id="searchbox" class="searchbar d-flex justify-content-center col-1 col-md-7 d-none d-xs-none d-sm-none d-md-block d-lg-block" style="width: 40%">
				<input class="search-bar border rounded text-center outline-none mr-1" type="search" placeholder="Search" style="width: 90%">
				<a href=""><i class="fa fa-search" style="color: black !important;"></i></a>
			</div>
			<div class="navalign-self-center col-6 col-sm-6 col-xs-6 col-md-3" style="position: relative;">
				<ul class="navicon d-flex justify-content-center" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); height: 60px;">
					<li class="home mx-1 align-self-center" style="width: 16px;"><a href=""><img src="../../img/home.png" alt="" style="width: 30px; height: 30px;" /> </a></li>
					<li class="message mx-1 align-self-center"><a href=""><img src="../../img/message.png" alt="" style="width: 20px; height: 20px;" /> </a></li>
					<li class="post mx-1 align-self-center"><a href="" data-toggle="modal" data-target="#postModal"> <svg style="color: black !important;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
							  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
							  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" /> 
						  	</svg>
					</a></li>
					<li class="news mx-1 align-self-center"><a href="" class="far fa-compass" style="color: black !important;"></a></li>
					<li class="notice mx-1 align-self-center"><a href="" class="far fa-heart" style="color: black !important;"></a></li>
					<li class="myinfo mx-1 align-self-center"><a href="" class="far fa-user" style="color: black !important;"></a></li>
					<span>
						<a href="../../view/user/loginPage.jsp" style="font-size: 5px;">logout<br>(임시)
						</a>
					</span>
				</ul>
			</div>
		</div>
	</div>
	<!-- 헤더 컨테이너 종료 -->

	<!-- 이미지 등록 모달 창 시작 -->
	<div id="postModal" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">게시글 등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="modalclose">
						<span aria-hidden="true"> &times; </span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="input-group mb-3">
							<div class="custom-file">
								<input id="uploadImages" style="display: block;" type="file"
									class="custom-file-input" multiple> <label
									class="custom-file-label" for="uploadImages">Choose
									file</label>
							</div>
						</div>
						<div id="imageContainer"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-success"
							data-toggle="modal" data-target="#contentModal"
							data-dismiss="modal" id="reloadImages">Next</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 이미지 등록 모달 창 종료 -->


	<!-- 게시글 등록 모달 창 시작 -->
	<div id="contentModal" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">게시글 등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="modalclose">
						<span aria-hidden="true"> &times; </span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<div id="imageContainer">
								<!-- 왼쪽에 띄워질 이미지 파일 미리보기 구역-->
								<!-- js 지식이 부족해 이전 모달창에서 입력한 이미지를 가져오는 방법을 몰라서 일단 패스  -->
							</div>
						</div>
						<div class="col-md-8">
							<!-- 계정 정보 출력 하는 구역 -->
							<!-- id : postUserInfo -->
							<div id="postUserInfo" class="row">
								<!-- 프로필 사진 출력 -->
								<div class="col-md-4">
									<!-- db에 저장된 프로필 사진 가져오기 -->
									<img src="/sns/img/20211219_152157.png" alt=""
										class="img-circle" style="max-width: 100%;" />
								</div>
								<!-- 계정  -->
								<div class="col-md-6">
									<%=user_id %>
								</div>
							</div>
							<!-- 본문 내용 등록하는 구역 -->
							<!-- id : postContent -->
							<div id="postContent" class="my-2">
								<textarea name="postContent" id="postContent" cols="30" rows="5" class="form-control" onchange="sortTag();"></textarea>
							</div>
							
							<div class="row" id="tagList">
							<!-- 해시태그(#), 태그(@) 결과물 미리보여주기 -->
							<!-- 해시태그는 해당 태그로 몇회 태그되었는지 -->
							<!-- 태그(@)는 가장 연관성이 높은 계정 보여주기 -->
								<h6>태그된 내용 보여주기</h6>
							
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<a href="../../controller/post/createPostController.jsp"><button type="button" class="btn btn-primary" data-dismiss="modal">등록</button></a>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 게시글 등록 모달 창 종료 -->

	<script src="/sns/js/post/post.js"></script>
</body>
</html>