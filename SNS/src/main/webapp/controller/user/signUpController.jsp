<%@page import="dao.UserDao"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 1. 한글 인코딩
	request.setCharacterEncoding("UTF-8");

	// 2. name값 호출
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String passwordconfirm = request.getParameter("passwordconfirm");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	int age = Integer.parseInt(request.getParameter("age"));

	// 3. 객체화
	User user = new User(id, password, email, phone, name, sex, age);
	// DB처리
	boolean result = UserDao.getuserDao().usersignup(user);
	if (result) { // 회원가입 성공
		response.sendRedirect("../../view/user/signUpSuccessPage.jsp");
	} else { // 회원가입 실패
		response.sendRedirect("../../view/user/signUpPage.jsp");
	}
	%>
</body>
</html>