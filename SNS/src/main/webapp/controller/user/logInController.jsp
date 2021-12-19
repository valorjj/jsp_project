<%@page import="dto.LogInData"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 1. 로그인 정보를 DB 에 저장된 정보와 비교해서 로그인 가능 여부를 반환한다. 

out.println("<script> alert('로그인 컨트롤러'); </script>");
String id = request.getParameter("loginId");
String password = request.getParameter("loginPassword");

// 2. DB 처리 
boolean result = UserDao.getUserDao().loginCheck(id, password);

if (result) { // 로그인 성공 시 
	// 3. 세션 부여
	// 3.1 로그인 id 이용해서 회원 no 찾기 
	int user_no = UserDao.getUserDao().getUserNo(id);
	// 3.2 user_no, user_id 값을 가지는 session 값 부여
	LogInData logInData = new LogInData(user_no, id);
	session.setAttribute("logIn", logInData);
	// 3.3 로그인 성공한 뒤 메인 화면으로 이동
	response.sendRedirect("/sns/view/main/mainPage.jsp");
} else { // 로그인 실패 시
	// 3.4 로그인 실패 시 
	out.println("<script> location.reload(); </script>");
}
%>