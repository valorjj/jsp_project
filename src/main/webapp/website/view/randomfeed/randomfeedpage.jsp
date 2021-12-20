<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{ border: solid 1px black;}

</style>
</head>
<body>
	
		<%@include file="../header.jsp" %>
		<div class="container">
		<%for(int i = 0; i < 3; i++) { %>
			<div class="row">
				<div class="col-md-4" style="width:30%;">
					<img src="/sns/website/img/커피1.jpg" style="max-width: 100%;">
				</div>
			<% for(int j = 0; j < porderdetails.size(); j++) { %>
				<div class="col-md-4" style="width:30%;">
					<img src="/sns/website/img/커피3.jpg" style="max-width: 100%;">
				</div>
			<%} %>	
			</div>
		<%} %>
		</div>
</body>
</html>