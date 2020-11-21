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
	<%
		DatabaseManager dm = new DatabaseManager();
		String result = dm.searchPw(user);
		if(result == "-2"){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB 오류입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == "-1"){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원님의 비밀번호는 "+result+" 입니다.')");
			script.println("location.href='./login_main.jsp'");
			script.println("</script>");
		}
	%>
</body>
</html>