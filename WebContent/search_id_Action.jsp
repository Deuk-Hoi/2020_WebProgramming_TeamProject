<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import= "java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.webprogramming.project.DB_DTO"/>
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		DatabaseManager dm = new DatabaseManager();
		String result = dm.searchId(user);
		if(result == "-1"){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB 오류입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == "-2"){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 이메일입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원님의 아이디는 "+result+" 입니다.')");
			script.println("location.href='./login_main.jsp'");
			script.println("</script>");
		}
	%>
</body>
</html>