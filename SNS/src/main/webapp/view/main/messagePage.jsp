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
			<div class="row col-12">
				<div class="col-5 border messageleft d-flex flex-column">
					<div class="messagetitle d-flex justify-content-between p-3">
						<label class="" for="">닉네임</label>
						<span class="btnsend">
							<a href="#">
								<svg aria-label="새로운 메시지" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 24 24" width="24">
									<path d="M12.202 3.203H5.25a3 3 0 00-3 3V18.75a3 3 0 003 3h12.547a3 3 0 003-3v-6.952" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path>
									<path d="M10.002 17.226H6.774v-3.228L18.607 2.165a1.417 1.417 0 012.004 0l1.224 1.225a1.417 1.417 0 010 2.004z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path>
									<line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" x1="16.848" x2="20.076" y1="3.924" y2="7.153"></line></svg>
							</a>
						</span>
					</div>
					<div class="messagelist d-flex flex-colmn flex-wrap" style="height: auto; width: 100%;">
						<!-- 반복추가 표본 -->
						<div class="userbox d-flex border border-primary" style="width: 100%">
							<div class="usericon align-self-center text-center" style="width: 20%">
								<a class="chatlink" href="">
									<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="" style="border-radius: 50%; width: 60px; height: 60px;" />
								</a>
							</div>
							<div class="align-self-center ml-3 p-2" style="width: 80%">
								<label for="">닉네임</label>
								<br />
								<p>상태 (활동중) OR 마지막대화첫줄</p>
							</div>
						</div>
						<!-- 반복추가 -->
						<div class="userbox d-flex border border-primary" style="width: 100%">
							<div class="usericon align-self-center text-center" style="width: 20%">
								<a class="chatlink" href="">
									<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="" style="border-radius: 50%; width: 60px; height: 60px;" />
								</a>
							</div>
							<div class="align-self-center ml-3 p-2" style="width: 80%">
								<label for="">닉네임</label>
								<br />
								<p>상태 (활동중) OR 마지막대화첫줄</p>
							</div>
						</div>
						<div class="userbox d-flex border border-primary" style="width: 100%">
							<div class="usericon align-self-center text-center" style="width: 20%">
								<a class="chatlink" href="">
									<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="" style="border-radius: 50%; width: 60px; height: 60px;" />
								</a>
							</div>
							<div class="align-self-center ml-3 p-2" style="width: 80%">
								<label for="">닉네임</label>
								<br />
								<p>상태 (활동중) OR 마지막대화첫줄</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-7 border messageright d-flex flex-column justify-content-center align-items-center" style="position: relative;">
					<!-- 대화창 인트로 -->
					<div class="messagebox align-self-center text-center" style="display: none;">
						<h2>
							<img class="my-1" src="../../img/message.png" alt="" />
						</h2>
						<h3 class="text-center">내 메세지</h3>
						<h6 class="text-center">친구나 그룹에 비공개 사진과 메세지를 보내보세요.</h6>
						<button class="btn btn-primary p-2 btnsend">메세지 보내기</button>
					</div>
					<!--  -->
					<!-- 대화창 -->
					<div class="chatbox" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: lightgrey; overflow: hidden;">
						<!-- 		<div class="chatinfo p-2" style="height: 10%">
							<span>아이디</span>
							님
						</div>
						<div class="chattxt" style="height: 80%">대화내용</div>
						<div class="chatinput col-12" style="width: 100%; height: 10%">
							<span class="col-3">이모티콘</span>
							<input type="text" class="col-7" placeholder="text 입력..." />
							<button class="col-2" type="submit">보내기</button>
						</div> -->
						<div class="chat-head">
							<h4>
								<span>아이디 : </span>
								님
							</h4>
							<img src="https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_down-16.png" title="Expand Arrow" width="16">
						</div>
						<div class="chat-body" style="height: 100%; position: relative;">
							<div class="msg-insert d-flex flex-column justify-content-center align-items-center" style="height: 85%; overflow: hidden;">
								<div class="msg-send align-self-center" style="width: 90%">Send message</div>
								<div class="msg-receive align-self-center" style="width: 90%">Received message</div>
							</div>
							<div class="chat-text my-3" style="height: 15%; width: 100%; position: absolute; bottom: 15%; margin-bottom: 10px;">
								<textarea placeholder="Send" class="" style="width: 70%; display: block; margin: 0 auto;"></textarea>
							</div>
						</div>
					</div>
					<!--  -->
				</div>
			</div>
			<!-- 메세지 보내기 모달창 -->
			<div class="messagesend" class="" style="width: 100%; height: 100%; display: none; position: relative;">
				<div class="messageselect " style="top: 50%; left: 50%; transform: translate(-50%, -50%); position: absolute; z-index: 10">
					<div class="top d-flex justify-content-center px-1 rounded" style="background: white;">
						<button class="btn btnclose" style="">x</button>
						<span class="badge badge-secondary px-1 mx-5" style="color: white; height: 40px; line-height: 40px;">새로운 메시지</span>
						<button class="btn btnnext" style="">다음</button>
					</div>
					<div class="search p-2" style="background: #fff;">
						<p>받는 사람 :</p>
						<input type="text" placeholder="검색..." / style="width: 100%">
					</div>
					<div class="searchfilter" style="width: 100%; height: auto; background: #fff;">
						<!-- 반복1 -->
						<div class="input-group-text d-flex " style="width: 100%; height: 60px;">
							<div class="profileimg" style="width: 30%">
								<a class="chatlink" href="">
									<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="" style="border-radius: 50%; width: 40px; height: 40px;" />
								</a>
							</div>
							<div class="profiletxt" style="width: 50%; height: 60px;">
								<p class="text-left" style="height: 30px; line-height: 30px; margin: 0; padding: 0">아이디</p>
								<p class="text-left" style="height: 30px; line-height: 30px; margin: 0; padding: 0">닉네임</p>
							</div>
							<input type="checkbox" aria-label="Checkbox for following text input" style="width: 20%">
						</div>
						<!-- 반복2 무한 -->
						<div class="input-group-text d-flex " style="width: 100%; height: 60px;">
							<div class="profileimg" style="width: 30%">
								<a class="chatlink" href="">
									<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="" style="border-radius: 50%; width: 40px; height: 40px;" />
								</a>
							</div>
							<div class="profiletxt" style="width: 50%; height: 60px;">
								<p class="text-left" style="height: 30px; line-height: 30px; margin: 0; padding: 0">아이디</p>
								<p class="text-left" style="height: 30px; line-height: 30px; margin: 0; padding: 0">닉네임</p>
							</div>
							<input type="checkbox" aria-label="Checkbox for following text input" style="width: 20%">
						</div>
					</div>
				</div>
			</div>
			<!-- 모달종료 -->
		</div>
		<!-- 컨테이너 종료 -->
		<div class="background" style="top: 50%; left: 50%; transform: translate(-50%, -50%); position: absolute; z-index: 1; width: 100%; height: 100%; background: #000; opacity: 0.5; display: none;"></div>
	</div>
	<script type="text/javascript">
		$(".btnsend").click(function() {
			$(".background").show();
			$(".messagesend").show();
		});

		$(".btnclose").click(function() {
			$(".messagesend").hide();
			$(".background").hide();
		});
	</script>
	<script type="text/javascript">
		$(".chatlink").click(function() {
			$(".chatbox").show();
		});
	</script>
	<script type="text/javascript">
		$(".btnnext").click(function() {
			$(".chatbox").hide();
			$(".messagesend").hide();
			$(".background").hide();
			$(".chatbox").show();

		});
	</script>
	<!-- 대화창 스크립트 -->
	<script type="text/javascript">
		$(function() {
			var arrow = $('.chat-head img');
			var textarea = $('.chat-text textarea');

			arrow
					.on(
							'click',
							function() {
								var src = arrow.attr('src');

								$('.chat-body').slideToggle('fast');
								if (src == 'https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_down-16.png') {
									arrow
											.attr('src',
													'https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_up-16.png');
								} else {
									arrow
											.attr('src',
													'https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_down-16.png');
								}
							});

			textarea.keypress(function(event) {
				var $this = $(this);

				if (event.keyCode == 13) {
					var msg = $this.val();
					$this.val('');
					$('.msg-insert').prepend(
							"<div class='msg-send'>" + msg + "</div>");
				}
			});

		});
	</script>
</body>
</html>
