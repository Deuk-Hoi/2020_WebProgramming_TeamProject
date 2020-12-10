<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import= "java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="loginDAO"  class = "com.webprogramming.project.LoginDAO"/>
<jsp:useBean id="user" class="com.webprogramming.project.DB_DTO" scope="page"/>
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(user.getUserId()==null||user.getUserEmail()==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력되지 않은 정보가 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			String result = loginDAO.searchPw_Check(user);
			if(result == "-2"){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('DB 오류입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else if(result == "-3"){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이메일이 존재하지 않습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else if(result == "-1"){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('아이디가 존재하지 않습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('본인인증 되었습니다.')");
				script.println("location.href='./search_pw.jsp'");
				script.println("</script>");
				session.setAttribute("userId",user.getUserId());
				session.setMaxInactiveInterval(-1);
			}
		}
	%>
</body>
</html>