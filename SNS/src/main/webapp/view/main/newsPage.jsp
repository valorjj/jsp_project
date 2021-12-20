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
	<div class="bg-danger row col-12 d-flex justify-content-between align-items-center" style="position: relative;"><%@include file="../common/header.jsp"%>
		<div class="" style="width:inherit ;position: absolute; top: 0px;">
			<!-- 토글 숨김창 -->
			<ul class="dropdown rounded" style="width: 500px; background: rgba(158, 158, 158, 0.3);">
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
			<!-- 토글 숨김창 종료 -->
			</li>
		</div>
	</div>
</body>
</html>