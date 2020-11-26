<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import= "java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.webprogramming.project.DB_DTO" scope="page"/>
<jsp:setProperty name="user" property="userId" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<%
			out.print(user.getUserId());
		%>
		<input type="button" value="확 인" onclick="self.close();"/>
	</div>
</html>