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
	<div class="wrap">
		<!-- 컨테이너 -->
		<div class="container">
			<div class="row profiletop col-12 my-3">
				<div class="myimg col-4 d-flex justify-content-center align-items-center ">
					<div class="border">
						<a href=""><img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces"  alt="" style="border-radius: 50%;"/></a>
					</div>
				</div>
				<div class="myinfo col-8">
					<div class="infotp" style="height: 50px;">
						<span class="mx-2">아이디</span>
						<button class="btn btn-outline-secondary mx-2">프로필 편집</button>
						<a href=""><svg aria-label="옵션" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 24 24" width="24">
								<circle cx="12" cy="12" fill="none" r="8.635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle>
								<path d="M14.232 3.656a1.269 1.269 0 01-.796-.66L12.93 2h-1.86l-.505.996a1.269 1.269 0 01-.796.66m-.001 16.688a1.269 1.269 0 01.796.66l.505.996h1.862l.505-.996a1.269 1.269 0 01.796-.66M3.656 9.768a1.269 1.269 0 01-.66.796L2 11.07v1.862l.996.505a1.269 1.269 0 01.66.796m16.688-.001a1.269 1.269 0 01.66-.796L22 12.93v-1.86l-.996-.505a1.269 1.269 0 01-.66-.796M7.678 4.522a1.269 1.269 0 01-1.03.096l-1.06-.348L4.27 5.587l.348 1.062a1.269 1.269 0 01-.096 1.03m11.8 11.799a1.269 1.269 0 011.03-.096l1.06.348 1.318-1.317-.348-1.062a1.269 1.269 0 01.096-1.03m-14.956.001a1.269 1.269 0 01.096 1.03l-.348 1.06 1.317 1.318 1.062-.348a1.269 1.269 0 011.03.096m11.799-11.8a1.269 1.269 0 01-.096-1.03l.348-1.06-1.317-1.318-1.062.348a1.269 1.269 0 01-1.03-.096" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></path></svg></a>
					</div>
					<div class="infomid d-flex" style="height: 50px;">
						<div class="postcount mx-2">
							<span>
								<svg aria-label="" class="_8-yf5 " color="#262626" fill="#262626" height="12" role="img" viewBox="0 0 24 24" width="12">
									<rect fill="none" height="18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" width="18" x="3" y="3"></rect>
									<line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" x1="9.015" x2="9.015" y1="3" y2="21"></line>
									<line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" x1="14.985" x2="14.985" y1="3" y2="21"></line>
									<line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" x1="21" x2="3" y1="9.015" y2="9.015"></line>
									<line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" x1="21" x2="3" y1="14.985" y2="14.985"></line></svg>
							</span>
							게시물수:
						</div>
						<div class="followercont mx-2">
							<span>
								<svg aria-label="" class="_8-yf5 " color="#8e8e8e" fill="#8e8e8e" height="12" role="img" viewBox="0 0 24 24" width="12">
									<polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></polygon></svg>
							</span>
							팔로워수:
						</div>
						<div class="followingcount mx-2">
							<span>
								<svg aria-label="" class="_8-yf5 " color="#8e8e8e" fill="#8e8e8e" height="12" role="img" viewBox="0 0 24 24" width="12">
									<path d="M10.201 3.797L12 1.997l1.799 1.8a1.59 1.59 0 001.124.465h5.259A1.818 1.818 0 0122 6.08v14.104a1.818 1.818 0 01-1.818 1.818H3.818A1.818 1.818 0 012 20.184V6.08a1.818 1.818 0 011.818-1.818h5.26a1.59 1.59 0 001.123-.465z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path>
									<path d="M18.598 22.002V21.4a3.949 3.949 0 00-3.948-3.949H9.495A3.949 3.949 0 005.546 21.4v.603" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path>
									<circle cx="12.072" cy="11.075" fill="none" r="3.556" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle></svg>
							</span>
							팔로우수:
						</div>
					</div>
					<div class="" style="height: 50px;">
						
						이름
					</div>
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row d-flex col-12 justify-content-center border-top" style="height: 50px; line-height: 50px;">
				<div class="postlist mx-1">
					<a href="" class="text-Secondary"><img src="" alt="" />게시물</a>
				</div>
				<div class="postcart mx-1">
					<a href=""><img src="" alt="" />저장됨</a>
				</div>
				<div class="posttag mx-1">
					<a href=""><img src="" alt="" />태그됨</a>
				</div>
			</div>
			<!-- 포토앨범 시작 -->
			<div class="row col-12" style="margin: 0 auto; display: block;">
				<!-- 그리드1  -->
				<div class="postbox border grid d-flex flex-wrap" >
					<div class="col-4 border" style="width: 33%; ">
						<a href=""><img style="width: 100%"  src="https://images.unsplash.com/photo-1504214208698-ea1916a2195a?w=500&h=500&fit=crop" alt="" /></a>
					</div>
					<!-- 그리드반복  -->
					<div class="col-4 border" style="width: 33%;">
						<a href=""><img src="" alt="" />사진</a>
					</div>
					<div class="col-4 border" style="width: 33%;">
						<a href=""><img src="" alt="" />사진</a>
					</div>
				</div>
				<!-- 포토앨범 종료 -->
			</div>
		</div>
		<!-- 컨테이너 종료 -->
	</div>
</body>
</html>
