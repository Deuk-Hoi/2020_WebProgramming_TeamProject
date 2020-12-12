<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import= "java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="loginDAO"  class = "com.webprogramming.project.LoginDAO"/>
<jsp:useBean id="user" class="com.webprogramming.project.DB_DTO" scope="page"/>
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPw" />
<jsp:setProperty name="user" property="checkPw" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		user.setUserId((String)session.getAttribute("userId"));
		String result = loginDAO.searchPw(user);
		if(result == "-2"){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB 오류입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == "-3"){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 일치하지 않습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호 변경이 완료되었습니다.')");
			script.println("location.href='./login_main.jsp'");
			script.println("</script>");
			session.invalidate();
		}
	%>
</body>
</html>