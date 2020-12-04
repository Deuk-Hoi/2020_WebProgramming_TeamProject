<%@page import="javafx.scene.control.Alert"%>
<%@page import="com.webprogramming.project.DatabaseManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="qna" class="com.webprogramming.project.QnADO"/>
<jsp:setProperty name="qna" property="*"/>
<%
	DatabaseManager dm = new DatabaseManager();
	int result = dm.InsertQnA(qna, (String)session.getAttribute("userId"));
	if(result == 1){
		out.print("<script>alert('Q & A 입력에 성공하였습니다.');window.location.href='Q&A.jsp';</script>");
	}else{
		out.print("<script>alert('Q & A 입력에 실패 하였습니다.');window.location.href='Q&A.jsp';</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

</body>
</html>