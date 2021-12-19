<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 아이디 -->
<%
Login login = (Login) session.getAttribute("login");
String loginid = null;
// 세션이 있을경우
if (login != null) {
	loginid = login.getUser_id();
}
%>
<!-- 공통 CSS -->
<link href="../../css/common/index.css" rel="stylesheet">
<!-- 부트스트랩 css 로드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- 아이콘 사용 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
</head>
<body>
	<!-- js로드 -->
	<!-- 1. 회원가입 유효성 검사script -->
	<script src="../../js/user/signUpCheck.js"></script>
	<script src="../../js/user/loginIdCheck.js"></script>
	<!-- 쿼리 및 부트스트랩 스크립트 로드 -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="/SNS/js/post/post.js"></script>
</body>
</html>