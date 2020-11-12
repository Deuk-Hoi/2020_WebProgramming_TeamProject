<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>login</title>
</head>
<body>
<form method="post" class = "login_all">
	<div class = "login_box">
		<h2>Login</h2>
		<input class = "login_ip" type="text" name="id" placeholder="ID"><br>
		<input class = "login_ip" type="password" name="password" placeholder="PASSWORD"><br>
	</div>
	<input id="login_button" type="submit" value="Log In"><br>
	<input class = "small_button" type="button" value="회원가입"
	onclick="location.href='sign_up.jsp'">
	<input class = "small_button" type="button" value="ID 찾기"
	onclick="location.href='search_id.jsp'">
	<input class = "small_button" type="button" value="PW 찾기"
	onclick="location.href='search_pw.jsp'">	
</form>
</body>
</html> 