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
	<div class="container">
		<h3 class="createPostTitle my-5" style="color: green;">게시글 등록</h3>
		<form enctype="multipart/form-data" id="uploadForm" method="post"
			action="../../controller/post/createPostController.jsp">
			<div class="row">
				<div class="col-md-7">

					<div class="row">
						<div class="col-md-6">
							<div class="input-group mb-3">
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="uploadImage"
										name="uploadImage" /> <label for="uploadImage"
										class="custom-file-label">Choose file1</label>
								</div>
							</div>
							<div class="imageContainer">
								<img src="" alt="" id="previewImage" style="max-width: 100%;" />
							</div>
						</div>
						<div class="col-md-6">
							<div class="input-group mb-3">
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="uploadImage2"
										name="uploadImage2" /> <label for="uploadImage2"
										class="custom-file-label">Choose file2</label>
								</div>
							</div>
							<div class="imageContainer2">
								<img src="" alt="" id="previewImage2" style="max-width: 100%;" />
							</div>
						</div>
					</div>

				</div>
				<div class="col-md-5">
					<div class="row m-1">
						<div class="col-md-2">
							<a href=""><img src="../../img/default-profile-photo.png"
								class="rounded-circle" alt="" style="width: 50px;" /></a>
						</div>
						<div class="col-md-6">
							<a href="" class="text-dark"><%=user_id%></a>
						</div>
					</div>
					<div class="input-group m-1">
						<div class="input-group-prepend">
							<span class="input-group-text">text</span>
						</div>
						<textarea name="postContent" id="postContent" cols="25" rows="5"
							class="form-control"></textarea>
					</div>
					<div class="input-group m-1">
						<div class="input-group-prepend">
							<span class="input-group-text">hashtag(#)</span>
						</div>
						<input type="text" class="form-control" id="postHashtag"
							name="postHashtag" onchange="">
					</div>
					<div class="input-group m-1">
						<div class="input-group-prepend">
							<span class="input-group-text">usertag(@)</span>
						</div>
						<input type="text" class="form-control" id="postTag"
							name="postTag" onchange="">
					</div>
					<input type="submit" id="btnSubmitPost" value="등록" />
				</div>
			</div>
		</form>
	</div>


	<br />
	<br />
	<br />
	<br />
	<script type="text/javascript">
	
		var imagePreview = document.getElementById('imageContainer');
		var imagePreview2 = document.getElementById('imageContainer2');
		
		function readImage(input){
			if(input.files && input.files[0]){
				var reader = new FileReader();
				reader.onload = (e) => {
					var previewImage = document.getElementById('previewImage');
					previewImage.src = e.target.result;
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		function readImage2(input){
			if(input.files && input.files[0]){
				var reader2 = new FileReader();
				reader2.onload = (e) => {
					var previewImage2 = document.getElementById('previewImage2');
					previewImage2.src = e.target.result;
				}
				reader2.readAsDataURL(input.files[0]);
			}
		}
		document.getElementById('uploadImage').addEventListener('change', (e) => {
		    readImage(e.target);
		});
		document.getElementById('uploadImage2').addEventListener('change', (e) => {
		    readImage2(e.target);
		});
	</script>
</body>
</html>