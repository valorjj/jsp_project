<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-md-3">
				<h3>메인 로고</h3>
			</div>
			<div class="col-md-4">
				<h3>검색 창</h3>
			</div>
			<div class="col-md-5">
				<nav class="navbar navbar-expand-lg navbar-light"
					style="background-color: #FFFFFF">
					<div class="collapse navbar-collapse"></div>
					<ul class="navbar-nav d-flex justify-content-around">
						<li class="navbar-item active"><a href="main.jsp"
							class="navbar-link"> <i class="bi bi-house-door-fill"></i></a></li>
						<li class="navbar-item active"><a href="" class="navbar-link"></a>
						</li>
						<li class="navbar-item active">
							<a href="main.jsp" class="navbar-link" id="modalOpen" data-toggle="modal" data-target="#postModal">
								<i class="bi bi-plus-square"></i>
							</a>
						</li>
						<li class="navbar-item active"><a href="" class="navbar-link"></a>
						</li>
						<li class="navbar-item active"><a href="" class="navbar-link"></a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

	</div>

	<div class="modal fade" id="postModal" tabindex="-1" role="">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">

					<h5 class="motal-title">사진 등록</h5>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

				</div>

				<div class="modal-body">
					<p>사진 등록</p>
					
					<div class="input-group mb-2">
						<div class="custom-file">
							<input type="file" class="custom-file-input" /> 사진 등록
						</div>
					</div>
					

				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-info"> 등록 </button>
				</div>
			</div>
		</div>

	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
</body>
</html>