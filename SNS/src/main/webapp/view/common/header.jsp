<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<!-- 스크립트/css/부트스트랩 호출 -->
	<%@include file="./common.jsp"%>
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
	<!-- 게시글 등록 모달 창 시작 -->
	<div id="postModal" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">게시글 등록</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="modalclose">
						<span aria-hidden="true"> &times; </span>
					</button>
				</div>
				<div class="modal-body">
					<div class="input-group mb-3">
						<div class="input-group-pretended">
							<span class="input-group-text" id="inputGroupFileAdd01">Upload</span>
						</div>
						<div class="custom-file">
							<input onchange="readImage(this);" accept="image/*" style="display: block;" type="file" class="custom-file-input" id="inputGroupFileAdd01" aria-describedby="inputGroupFileAdd01">
							<label class="custom-file-label" for="inputGroupFileAdd01">Choose file</label>
						</div>
					</div>
					<div class="image_upload">
						<img style="max-width: 100%;" src="#" alt="" id="preview-image" />
						<!-- <input style="display: block;" type="file" id="input-image"> -->
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 게시글 등록 모달 창 종료 -->
	<!-- 이미지 미리보기 스크립트 시작 -->
	<script type="text/javascript">
		function readImage(input){
			
			for(var image of input.target.files){
				
				
				
			}
			
			
			if(input.files && input.files[0]){
				var reader = new FileReader();
				reader.onload = function(e) { $("#preview-image").attr("src", e.target.result); }
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
</body>
</html>