<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		session.invalidate();
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α׾ƿ� �Ǿ����ϴ�.')");
		script.println("location.href='./index.jsp'");
		script.println("</script>");
%>
</body>
</html>