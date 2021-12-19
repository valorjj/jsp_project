
<%@page import="dto.Login"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); // 한글 인코딩
String id = request.getParameter("id");
String password = request.getParameter("password");

// DB 처리
boolean result = UserDao.getuserDao().login(id, password);
// DB 결과
if (result) {// 로그인 성공시
	// 세션 부여 [ 내장객체 : 기본값 (30분) ]

	// 회원정보찾기
	int user_no = UserDao.getuserDao().getmembernum(id);
	// 로그인 객체
	Login login = new Login(user_no, id);

	// 세션
	session.setAttribute("login", login);

	response.sendRedirect("../../view/main/mainPage.jsp");
} else { // 로그인 실패시
	response.sendRedirect("../../view/user/loginPage.jsp?resilt=fail");

}
%>
