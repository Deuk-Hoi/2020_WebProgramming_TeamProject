<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="styles/login_page_css/login_main.css">
</head>
<body>
	<form method="post">
		<div class="entire" align="center">
			<div class="box">
				<div class="ip">
					<input class = "login_ip" type="text" name="id" placeholder="ID"><br>
					<input class = "login_ip" type="password" name="password" placeholder="PASSWORD"><br>
				</div>
				<div class="ip_2">
					<input id="login_button" type="submit" value="로그인"><br>
					<input class = "small_button" type="button" value="회원가입" onclick="location.href='sign_up.jsp'">
					<input class = "small_button" type="button" value="ID 찾기" onclick="location.href='search_id.jsp'">
					<input class = "small_button" type="button" value="PW 찾기" onclick="location.href='search_pw.jsp'">
				</div>
			</div>
		</div>
	</form>
</body>
</html>