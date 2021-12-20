<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>

	<!-- 게시글을 등록하는 페이지입니다. -->
	<%@ include file="../common/header.jsp"%>
	<%
	LogInData logInData2 = (LogInData) session.getAttribute("logIn");
	%>

	<div class="container">
		<h3 class="createPostTitle my-5" style="color: green;">게시글 등록</h3>
		<form enctype="multipart/form-data" id="uploadForm" method="post">
			<div class="row">
				<div class="col-md-7">
					<div class="input-group mb-3">
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="uploadImage" name="uploadImage"/>
							<label for="uploadImage" class="custom-file-label">Choose file</label>
						</div>
						<!-- <div class="input-group-append">
							<button class="btn btn-outline-success" type="button" id="uploadImage">Upload</button>
						</div> -->
					</div>
					<div class="imageContainer">
						<img src="" alt="" id="previewImage" style="max-width:100%;"/>
					</div>
				</div>
				<div class="col-md-5">
					<div class="row m-1">
						<div class="col-md-4">
							<a href=""><img src="" alt="" /></a>
						</div>
						<div class="col-md-8" style="background-color: #eeeeee;">
							<a href="" class="text-dark"><%=user_id%></a>
						</div>
					</div>
					<div class="input-group m-1">
						<div class="input-group-prepend">
							<span class="input-group-text">text</span>
						</div>
						<textarea name="" id="" cols="25" rows="5" class="form-control"></textarea>
					</div>
					<div class="input-group m-1">
						<div class="input-group-prepend">
							<span class="input-group-text">hashtag(#)</span>
						</div>
						<input type="text" class="form-control" id="" name="">
					</div>
					<div class="input-group m-1">
						<div class="input-group-prepend">
							<span class="input-group-text">usertag(@)</span>
						</div>
						<input type="text" class="form-control" id="" name="">
					</div>
					<input type="submit" id="btnSubmitPost" value="등록"/>
					
				</div>
			</div>
		</form>
	</div>

	<br />
	<br />
	<br />
	<br />
	<script type="text/javascript">
		function readImage(input){
			if(input.files && input.files[0]){
				console.log(input.files);
				const reader = new FileReader();
				reader.onload = (e) => {
					const previewImage = document.getElementById('previewImage');
					previewImage.src = e.target.result;
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		document.getElementById('uploadImage').addEventListener('change', (e) => {
		    readImage(e.target);
		});
		
 		$('#btnSubmitPost').on('click', function(event){
			event.preventDefault();
		    var form = $('#uploadForm')[0];  	 
		    console.log(form);
		    // Create an FormData object          
		    var data = new FormData(form);  
		    console.log(data);
		    data.append('img',document.getElementById('uploadImage').files[0]);
		    console.log(data);
		    // Create an FormData object          
			$('#btnSubmitPost').prop('disabled', true);
			$.ajax({
				enctype: 'multipart/form-data',
				contentType : false,
			    processData : false,
			    data : {data : data},
			    url : '../../controller/post/createPostController.jsp',
			    type : 'post',
			    success :  function(result){
			    	alert(result);
			    },
			    error:function(e){
			        console.log("error : ", e);
			    }
			});
		});
	</script>
</body>
</html>