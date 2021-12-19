<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/post/post.css" rel="stylesheet">
</head>
<body>


	<%
	// 1. 게시물 등록 창(Modal) 에서 업로드한 이미지 파일, 컨텐츠 등을 db에 연동해서 저장해야한다.
	%>

	<!-- 스크립트/css/부트스트랩 호출 -->
	<%@include file="common.jsp"%>
	<!-- 헤더 컨테이너 시작 -->
	<div class="container">
		<!-- 가로배치 -->
		<div
			class="row d-flex col-12 justify-content-around align-items-center border-bottom"
			style="height: 60px">

			<div class="logo border">
				<a href=""> <img class="logo-img" style="width: 5rem;"
					src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"></a>
			</div>

			<div id="searchbox" class="searchbar d-flex">
				<input
					class="search-bar border rounded text-center outline-none mr-1"
					type="search" placeholder="Search" style="width: 90%"> <a
					href=""><i class="fa fa-search"
					style="color: black !important;"></i></a>
			</div>

			<div class="nav bg-info" style="position: relative;">
				<ul class="navicon d-flex" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%)">
					<li class="home mx-1">
						<a href=""> 
							<svg style="color: black !important;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
			  						<path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
							</svg>
						</a>
					</li>

					<li class="message mx-1">
						<a href=""> 
							<svg style="color: black !important;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cursor" viewBox="0 0 16 16">
		  						<path d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103zM2.25 8.184l3.897 1.67a.5.5 0 0 1 .262.263l1.67 3.897L12.743 3.52 2.25 8.184z" />
							</svg>
						</a>
					</li>

					<li class="post mx-1">
						<a href="" data-toggle="modal" data-target="#postModal">
							<svg style="color: black !important;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
								  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
								  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" /> 
						  	</svg>
						</a>
					</li>
					<li class="news mx-1"><a href="" class="far fa-compass"
						style="color: black !important;"></a></li>
					<li class="notice mx-1"><a href="" class="far fa-heart"
						style="color: black !important;"></a></li>
					<li class="myinfo mx-1"><a href="" class="far fa-user"
						style="color: black !important;"></a></li>
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
					<div class="input-group mb-3">
						<div class="custom-file">
							<input id="uploadImages" style="display: block;" type="file"
								class="custom-file-input" multiple="multiple"> <label
								class="custom-file-label" for="uploadImages">Choose file</label>
						</div>
					</div>
					<div id="imageContainer">
						<!-- <img style="max-width: 100%;" src="#" alt="" id="previewImage" /> -->
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#contentModal">Next</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
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
							<div id="imageContainer2">
							<!-- 왼쪽에 띄워질 이미지 파일 미리보기 구역-->
							<!-- <img style="max-width: 100%;" src="#" alt="" id="previewImage" /> -->
							</div>
						</div>
						<div class="col-md-8">
							<!-- 계정 정보 출력 하는 구역 -->
							<!-- id : postUserInfo -->
							<div id="postUserInfo" class="row">
								<!-- 프로필 사진 출력 -->
								<div class="col-md-2">
								<img src="/SNS/img/20211219_152157.png" alt="" class="img-circle" style="max-width:100%;"/>
								</div>
								<!-- 계정  -->
								<div class="col-md-10">
									<h6> 내용 </h6>
								</div>
							</div>
							<!-- 본문 내용 등록하는 구역 -->
							<!-- id : postContent -->
							<div id="postContent">
								
							
							
							</div>
						
						</div>
					</div>
					<div class="container"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 게시글 등록 모달 창 종료 -->

	<script src="/SNS/js/post/post.js"></script>


</body>
</html>