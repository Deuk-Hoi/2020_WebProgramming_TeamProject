<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import= "java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="loginDAO"  class = "com.webprogramming.project.LoginDAO"/>
<%
	int rst=0;
	String id = (String)request.getParameter("id");
	rst=loginDAO.IdCheck(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	p{
		font-size:22px;
	}
</style>
</head>
<body>
<div align="center">
	<%
		if(rst==1){
	%>
	<p>아이디가 이미 존재합니다.</p>
	<%} else{%>
	<p>사용가능한 아이디입니다.</p>
	<%} %>
	<input type="button" value="확인" onClick="window.close()" style="margin:15px 0 0 0; height:40px;width:100px">
</div>
</html>