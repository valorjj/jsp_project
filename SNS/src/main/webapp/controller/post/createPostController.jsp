<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*
@Author : 김정진
@Date : 2021-12-19
@Comment : 사용자가 업로드한 파일, 본문 내용을 변수로 받고, DB와 연동하는 컨트롤러입니다.
*/

// String folderpath = "C:/Users/505/git/jsp_project/SNS/src/main/webapp/upload";
String folderpath = request.getSession().getServletContext().getRealPath("/upload");
MultipartRequest multi = new MultipartRequest(request, folderpath, 1024 * 1024 * 10, "UTF-8",
		new DefaultFileRenamePolicy());
request.setCharacterEncoding("utf-8");
String content = multi.getParameter("postContent");
// 본문 내용 정규식 검사
content = content.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
String hashtag = multi.getParameter("postHashtag");
String tag = multi.getParameter("postTag");
String imageFile = multi.getFilesystemName("uploadImage");
String imageFile2 = multi.getFilesystemName("uploadImage2");

// db 처리해서 넘기기
%>