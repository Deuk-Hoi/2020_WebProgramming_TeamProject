<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import= "java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="loginDAO"  class = "com.webprogramming.project.LoginDAO"/>
<jsp:useBean id="user" class="com.webprogramming.project.DB_DTO" scope="page"/>
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPw" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPhone" />
<jsp:setProperty name="user" property="checkPw" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(user.getUserId()==null||user.getUserPw()==null||user.getUserName()==null||
				user.getUserEmail()==null||user.getUserPhone()==null||user.getCheckPw()==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력되지 않은 정보가 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			int result = loginDAO.register(user);
			if(result==-3){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('아이디 중복확인을 해주세요.')");
				script.println("history.back()");
				script.println("</script>");
			}else if(result==-2){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호가 일치하지 않습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else if(result==-1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('DB 오류입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입에 성공했습니다.')");
				script.println("location.href='login_main.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>